-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_participantes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "data_criação" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id_evento" TEXT NOT NULL,
    CONSTRAINT "participantes_id_evento_fkey" FOREIGN KEY ("id_evento") REFERENCES "eventos" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_participantes" ("data_criação", "email", "id", "id_evento", "name") SELECT "data_criação", "email", "id", "id_evento", "name" FROM "participantes";
DROP TABLE "participantes";
ALTER TABLE "new_participantes" RENAME TO "participantes";
CREATE UNIQUE INDEX "participantes_id_evento_email_key" ON "participantes"("id_evento", "email");
CREATE TABLE "new_CheckIn" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data_criação" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id_participante" INTEGER NOT NULL,
    CONSTRAINT "CheckIn_id_participante_fkey" FOREIGN KEY ("id_participante") REFERENCES "participantes" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_CheckIn" ("data_criação", "id", "id_participante") SELECT "data_criação", "id", "id_participante" FROM "CheckIn";
DROP TABLE "CheckIn";
ALTER TABLE "new_CheckIn" RENAME TO "CheckIn";
CREATE UNIQUE INDEX "CheckIn_id_participante_key" ON "CheckIn"("id_participante");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
