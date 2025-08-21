/*
  Warnings:

  - You are about to drop the column `query` on the `submissao` table. All the data in the column will be lost.
  - Added the required column `resposta` to the `submissao` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."submissao" DROP COLUMN "query",
ADD COLUMN     "resposta" TEXT NOT NULL;
