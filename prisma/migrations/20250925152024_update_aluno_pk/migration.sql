/*
  Warnings:

  - The primary key for the `aluno` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "public"."submissao" DROP CONSTRAINT "submissao_alunoId_fkey";

-- AlterTable
ALTER TABLE "public"."aluno" DROP CONSTRAINT "aluno_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "aluno_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "public"."submissao" ALTER COLUMN "alunoId" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "public"."submissao" ADD CONSTRAINT "submissao_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "public"."aluno"("id") ON DELETE SET NULL ON UPDATE CASCADE;
