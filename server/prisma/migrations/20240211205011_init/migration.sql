-- CreateTable
CREATE TABLE "Movie" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "adult" BOOLEAN NOT NULL,
    "backdropPath" TEXT NOT NULL,
    "budget" INTEGER NOT NULL,
    "homepage" TEXT NOT NULL,
    "tmdbId" INTEGER NOT NULL,
    "imdbId" TEXT NOT NULL,
    "originalLanguage" TEXT NOT NULL,
    "originalTitle" TEXT NOT NULL,
    "overview" TEXT NOT NULL,
    "popularity" DOUBLE PRECISION NOT NULL,
    "posterPath" TEXT NOT NULL,
    "releaseDate" TEXT NOT NULL,
    "revenue" INTEGER NOT NULL,
    "runtime" INTEGER NOT NULL,
    "status" TEXT NOT NULL,
    "tagline" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "video" BOOLEAN NOT NULL,
    "voteAverage" DOUBLE PRECISION NOT NULL,
    "voteCount" INTEGER NOT NULL,
    "genres" TEXT[],
    "productionCompanies" TEXT[],
    "productionCountries" TEXT[],
    "spokenLanguages" TEXT[],

    CONSTRAINT "Movie_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Movie_id_key" ON "Movie"("id");
