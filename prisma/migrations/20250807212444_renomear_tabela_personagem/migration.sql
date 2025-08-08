/*
  Warnings:

  - You are about to drop the `Personagem` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "public"."Personagem";

-- CreateTable
CREATE TABLE "public"."personagem" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "imagem" BYTEA,

    CONSTRAINT "personagem_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "personagem_nome_key" ON "public"."personagem"("nome");
