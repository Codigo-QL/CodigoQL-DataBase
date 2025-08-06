import { PrismaClient } from '@prisma/client';
import fs from 'fs';
import path from 'path';

const prisma = new PrismaClient();

async function main() {
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

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
