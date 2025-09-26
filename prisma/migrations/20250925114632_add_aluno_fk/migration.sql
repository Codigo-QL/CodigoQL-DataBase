-- AlterTable
ALTER TABLE "public"."submissao" ADD COLUMN     "alunoId" UUID;

-- AddForeignKey
ALTER TABLE "public"."submissao" ADD CONSTRAINT "submissao_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "public"."aluno"("id") ON DELETE SET NULL ON UPDATE CASCADE;
