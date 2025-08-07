-- DropForeignKey
ALTER TABLE "public"."nivel" DROP CONSTRAINT "nivel_personagem_nome_fkey";

-- AlterTable
ALTER TABLE "public"."nivel" ALTER COLUMN "personagem_nome" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "public"."nivel" ADD CONSTRAINT "nivel_personagem_nome_fkey" FOREIGN KEY ("personagem_nome") REFERENCES "public"."personagem"("nome") ON DELETE RESTRICT ON UPDATE CASCADE;
