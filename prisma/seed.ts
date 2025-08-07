import { PrismaClient } from '@prisma/client';
import fs from 'fs';
import path from 'path';

const prisma = new PrismaClient();

async function seedPersonagens() {
  const dataPath = path.join(__dirname, '../data/personagens.json');
  const personagens = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));

  for (const p of personagens) {
    let imagem: Buffer | null = null;

    if (p.imagem) {
      const imgPath = path.join(__dirname, '../data/images/', p.imagem);
      if (fs.existsSync(imgPath)) {
        imagem = fs.readFileSync(imgPath);
      }
    }

    await prisma.personagem.upsert({
      where: { nome: p.nome },
      update: { imagem },
      create: { nome: p.nome, imagem }
    });

    console.log(`Personagem ${p.nome} inserido/atualizado.`);
  }
}

async function seedBaseDados() {
  const dataPath = path.join(__dirname, '../data/base_dados.json');
  const bases = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));

  for (const b of bases) {
    let arquivo: Buffer | null = null;
    if (b.arquivo) {
      const filePath = path.join(__dirname, '../data/files/', b.arquivo);
      if (fs.existsSync(filePath)) {
        arquivo = fs.readFileSync(filePath);

        await prisma.baseDados.upsert({
          where: { codigo: b.codigo },
          update: { nome: b.nome, arquivo },
          create: { codigo: b.codigo, nome: b.nome, arquivo }
        });
    
        console.log(`BaseDados ${b.codigo} inserida/atualizada.`);
      } else {
        console.log(`BaseDados ${b.codigo} NÃO inserida por falta de arquivo`);
      }
    }

  }
}

async function main() {
  await seedPersonagens();
  await seedBaseDados();
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
