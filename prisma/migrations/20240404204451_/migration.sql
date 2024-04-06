/*
  Warnings:

  - You are about to drop the `attendees` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `events` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "attendees";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "events";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "eventos" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "details" TEXT,
    "slug" TEXT NOT NULL,
    "maximo_participantes" INTEGER
);

-- CreateTable
CREATE TABLE "participantes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "data_criação" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id_evento" TEXT NOT NULL,
    CONSTRAINT "participantes_id_evento_fkey" FOREIGN KEY ("id_evento") REFERENCES "eventos" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "eventos_slug_key" ON "eventos"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "participantes_id_evento_email_key" ON "participantes"("id_evento", "email");
