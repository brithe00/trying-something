import * as dotenv from 'dotenv';
dotenv.config();
import axios from 'axios';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

const fetchESOTM = async () => {
	try {
		const response = await axios.get(
			'https://api.themoviedb.org/3/movie/38?language=en-US',
			{
				headers: {
					accept: 'application/json',
					Authorization: `Bearer ${process.env.TOKEN}`,
				},
			}
		);
		return response.data;
	} catch (error) {
		console.error(error);
	}
};

const testLog = async () => {
	const movieData = await fetchESOTM();

	// check if is it in db
	if (movieData && movieData.id) {
		const checker = await prisma.movie.findFirst({
			where: {
				tmdbId: movieData.id,
			},
		});

		if (checker) {
			console.log('Movie already in the database');
		} else {
			console.log('Movie not in the database');
			// not in ? create new one
			const movieDetails = await prisma.movie.create({
				data: {
					adult: movieData.adult,
					backdropPath: movieData.backdrop_path,
					budget: movieData.budget,
					homepage: movieData.homepage,
					overview: movieData.overview,
					popularity: movieData.popularity,
					revenue: movieData.revenue,
					runtime: movieData.runtime,
					status: movieData.status,
					tagline: movieData.tagline,
					title: movieData.title,
					video: movieData.video,
					tmdbId: movieData.id,
					imdbId: movieData.imdb_id,
					originalLanguage: movieData.original_language,
					originalTitle: movieData.original_title,
					posterPath: movieData.poster_path,
					releaseDate: movieData.release_date,
					voteAverage: movieData.vote_average,
					voteCount: movieData.vote_count,
					// productionCompanies: movieData.production_companies,
					// productionCountries: movieData.production_countries,
					// spokenLanguages: movieData.spoken_languages,
				},
			});

			return movieDetails;
		}
	} else {
		console.log('Error fetching movie data');
	}
};

testLog();
