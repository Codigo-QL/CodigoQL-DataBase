-- CreateTable
CREATE TABLE "public"."nivel" (
    "id" SERIAL NOT NULL,
    "codigo_cap" VARCHAR(10) NOT NULL,
    "narrativa" TEXT NOT NULL,
    "enunciado" TEXT NOT NULL,
    "dica" TEXT NOT NULL,
    "personagem_nome" VARCHAR(20) NOT NULL,
    "solucao" TEXT,
    "feedback_correto" TEXT,
    "feedback_errado" TEXT,
    "codigo_base" VARCHAR(10),

    CONSTRAINT "nivel_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."nivel" ADD CONSTRAINT "nivel_codigo_cap_fkey" FOREIGN KEY ("codigo_cap") REFERENCES "public"."capitulo"("codigo") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."nivel" ADD CONSTRAINT "nivel_personagem_nome_fkey" FOREIGN KEY ("personagem_nome") REFERENCES "public"."personagem"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."nivel" ADD CONSTRAINT "nivel_codigo_base_fkey" FOREIGN KEY ("codigo_base") REFERENCES "public"."base_dados"("codigo") ON DELETE SET NULL ON UPDATE CASCADE;
