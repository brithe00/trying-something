-- AlterTable
ALTER TABLE "Movie" ALTER COLUMN "adult" DROP NOT NULL,
ALTER COLUMN "backdropPath" DROP NOT NULL,
ALTER COLUMN "budget" DROP NOT NULL,
ALTER COLUMN "homepage" DROP NOT NULL,
ALTER COLUMN "tmdbId" DROP NOT NULL,
ALTER COLUMN "imdbId" DROP NOT NULL,
ALTER COLUMN "originalLanguage" DROP NOT NULL,
ALTER COLUMN "originalTitle" DROP NOT NULL,
ALTER COLUMN "overview" DROP NOT NULL,
ALTER COLUMN "popularity" DROP NOT NULL,
ALTER COLUMN "posterPath" DROP NOT NULL,
ALTER COLUMN "releaseDate" DROP NOT NULL,
ALTER COLUMN "revenue" DROP NOT NULL,
ALTER COLUMN "runtime" DROP NOT NULL,
ALTER COLUMN "status" DROP NOT NULL,
ALTER COLUMN "tagline" DROP NOT NULL,
ALTER COLUMN "title" DROP NOT NULL,
ALTER COLUMN "video" DROP NOT NULL,
ALTER COLUMN "voteAverage" DROP NOT NULL,
ALTER COLUMN "voteCount" DROP NOT NULL;
