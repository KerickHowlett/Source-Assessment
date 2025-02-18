/*
  Warnings:

  - A unique constraint covering the columns `[mediaName]` on the table `Media` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[fullName]` on the table `creators` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Media_mediaName_key" ON "Media"("mediaName");

-- CreateIndex
CREATE UNIQUE INDEX "creators_fullName_key" ON "creators"("fullName");
