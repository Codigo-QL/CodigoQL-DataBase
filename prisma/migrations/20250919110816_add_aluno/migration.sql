-- CreateTable
CREATE TABLE "public"."aluno" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "email" TEXT NOT NULL,

    CONSTRAINT "aluno_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "aluno_email_key" ON "public"."aluno"("email");

ALTER TABLE public.aluno ENABLE ROW LEVEL SECURITY;
