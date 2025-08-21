-- CreateTable
CREATE TABLE "public"."submissao" (
    "id" SERIAL NOT NULL,
    "sessao_id" TEXT NOT NULL,
    "matricula" TEXT,
    "nivel_id" INTEGER NOT NULL,
    "query" TEXT NOT NULL,
    "acertou" BOOLEAN NOT NULL,
    "data_resolucao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "submissao_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."submissao" ADD CONSTRAINT "submissao_nivel_id_fkey" FOREIGN KEY ("nivel_id") REFERENCES "public"."nivel"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
