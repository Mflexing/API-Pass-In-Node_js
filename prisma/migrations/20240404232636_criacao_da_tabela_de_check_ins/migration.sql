-- CreateTable
CREATE TABLE "CheckIn" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data_criação" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id_participante" INTEGER NOT NULL,
    CONSTRAINT "CheckIn_id_participante_fkey" FOREIGN KEY ("id_participante") REFERENCES "participantes" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "CheckIn_id_participante_key" ON "CheckIn"("id_participante");
