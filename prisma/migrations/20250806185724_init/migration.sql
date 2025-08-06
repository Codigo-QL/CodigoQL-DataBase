-- CreateTable
CREATE TABLE "public"."Personagem" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "imagem" BYTEA,

    CONSTRAINT "Personagem_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Personagem_nome_key" ON "public"."Personagem"("nome");
