ALTER TABLE public.personagem ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.base_dados ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.capitulo ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.nivel ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.submissao ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Permitir leitura publica" ON public.personagem FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica" ON public.base_dados FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica" ON public.capitulo FOR SELECT USING (true);
CREATE POLICY "Permitir leitura publica" ON public.nivel FOR SELECT USING (true);

CREATE POLICY "Permitir inserção publica" ON public.submissao FOR INSERT WITH CHECK (true);