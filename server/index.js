import * as dotenv from 'dotenv';
dotenv.config();
import axios from 'axios';
import { PrismaClient } from '@prisma/client';
import colors from 'colors';

const prisma = new PrismaClient();

const fetchMoviesDetailsFromIdToId = async (startingId, endingId) => {
	try {
		for (let i = 0; i < endingId; i++) {
			const url = `https://api.themoviedb.org/3/movie/${
				startingId + i
			}?language=en-US`;

			const options = {
				headers: {
					accept: 'application/json',
					Authorization: `Bearer ${process.env.TOKEN}`,
				},
			};

			try {
				const response = await axios.get(url, options);
				const movieDetails = response.data;

				if (movieDetails && movieDetails.id) {
					const checkIfIsInDb = await prisma.movie.findFirst({
						where: {
							tmdbId: movieDetails.id,
						},
					});

					if (checkIfIsInDb) {
						console.log(
							`Movie #${checkIfIsInDb.tmdbId} - ${checkIfIsInDb.originalTitle} is already in the database.`
								.yellow
						);
					} else {
						const movieToInsert = await prisma.movie.create({
							data: {
								adult: movieDetails.adult,
								backdropPath: movieDetails.backdrop_path,
								budget: movieDetails.budget,
								homepage: movieDetails.homepage,
								overview: movieDetails.overview,
								popularity: movieDetails.popularity,
								revenue: movieDetails.revenue,
								runtime: movieDetails.runtime,
								status: movieDetails.status,
								tagline: movieDetails.tagline,
								title: movieDetails.title,
								video: movieDetails.video,
								tmdbId: movieDetails.id,
								imdbId: movieDetails.imdb_id,
								originalLanguage: movieDetails.original_language,
								originalTitle: movieDetails.original_title,
								posterPath: movieDetails.poster_path,
								releaseDate: movieDetails.release_date,
								voteAverage: movieDetails.vote_average,
								voteCount: movieDetails.vote_count,
								// productionCompanies: movieDetails.production_companies,
								// productionCountries: movieDetails.production_countries,
								// spokenLanguages: movieDetails.spoken_languages,
							},
						});

						console.log(
							`Movie #${movieToInsert.tmdbId} - ${movieToInsert.originalTitle} inserted to the database`
								.green
						);
					}
				}
			} catch (error) {
				if (error.response && error.response.status === 404) {
					console.log(`Movie #${startingId + i} - not found.`.red);
				} else {
					console.log(
						`Error fetching movie details for #${startingId + i}: ${
							error.message
						}`
					);
				}
			}
		}
	} catch (error) {
		console.log(`An unexpected error occurred: ${error}`);
	}
};

fetchMoviesDetailsFromIdToId(1, 100);
