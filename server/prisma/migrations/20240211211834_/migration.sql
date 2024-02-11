/*
  Warnings:

  - Made the column `adult` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `backdropPath` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `budget` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `homepage` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `tmdbId` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `imdbId` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `originalLanguage` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `originalTitle` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `overview` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `popularity` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `posterPath` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `releaseDate` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `revenue` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `runtime` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `status` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `tagline` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `title` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `video` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `voteAverage` on table `Movie` required. This step will fail if there are existing NULL values in that column.
  - Made the column `voteCount` on table `Movie` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Movie" ALTER COLUMN "adult" SET NOT NULL,
ALTER COLUMN "backdropPath" SET NOT NULL,
ALTER COLUMN "budget" SET NOT NULL,
ALTER COLUMN "homepage" SET NOT NULL,
ALTER COLUMN "tmdbId" SET NOT NULL,
ALTER COLUMN "imdbId" SET NOT NULL,
ALTER COLUMN "originalLanguage" SET NOT NULL,
ALTER COLUMN "originalTitle" SET NOT NULL,
ALTER COLUMN "overview" SET NOT NULL,
ALTER COLUMN "popularity" SET NOT NULL,
ALTER COLUMN "posterPath" SET NOT NULL,
ALTER COLUMN "releaseDate" SET NOT NULL,
ALTER COLUMN "revenue" SET NOT NULL,
ALTER COLUMN "runtime" SET NOT NULL,
ALTER COLUMN "status" SET NOT NULL,
ALTER COLUMN "tagline" SET NOT NULL,
ALTER COLUMN "title" SET NOT NULL,
ALTER COLUMN "video" SET NOT NULL,
ALTER COLUMN "voteAverage" SET NOT NULL,
ALTER COLUMN "voteCount" SET NOT NULL;
