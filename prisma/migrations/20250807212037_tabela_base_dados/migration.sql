-- CreateTable
CREATE TABLE "public"."base_dados" (
    "codigo" VARCHAR(10) NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "arquivo" BYTEA NOT NULL,

    CONSTRAINT "base_dados_pkey" PRIMARY KEY ("codigo")
);
