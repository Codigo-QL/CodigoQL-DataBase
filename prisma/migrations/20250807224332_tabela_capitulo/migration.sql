-- CreateTable
CREATE TABLE "public"."capitulo" (
    "codigo" VARCHAR(10) NOT NULL,
    "titulo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "capitulo_pkey" PRIMARY KEY ("codigo")
);
