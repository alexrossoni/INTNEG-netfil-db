import mysql.connector
from faker import Faker
import random
from datetime import timedelta

fake = Faker()

# Configurar conexão
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="dbnetf"
)
cursor = conn.cursor()

def inserir_simples(tabela, colunas, valores):
    placeholders = ', '.join(['%s'] * len(valores))
    colunas_str = ', '.join(colunas)
    sql = f"INSERT INTO {tabela} ({colunas_str}) VALUES ({placeholders})"
    cursor.execute(sql, valores)

# Listas manuais para 5 países, 2 estados cada, e 4 cidades por estado
paises = [
    {"id": 1, "nome": "Brasil"},
    {"id": 2, "nome": "Estados Unidos"},
    {"id": 3, "nome": "Canadá"},
    {"id": 4, "nome": "Alemanha"},
    {"id": 5, "nome": "Austrália"},
]

estados = [
    # Brasil (idPais=1)
    {"id": 1, "nome": "São Paulo", "idPais": 1},
    {"id": 2, "nome": "Rio de Janeiro", "idPais": 1},
    # Estados Unidos (idPais=2)
    {"id": 3, "nome": "California", "idPais": 2},
    {"id": 4, "nome": "Texas", "idPais": 2},
    # Canadá (idPais=3)
    {"id": 5, "nome": "Ontario", "idPais": 3},
    {"id": 6, "nome": "Quebec", "idPais": 3},
    # Alemanha (idPais=4)
    {"id": 7, "nome": "Baviera", "idPais": 4},
    {"id": 8, "nome": "Berlim", "idPais": 4},
    # Austrália (idPais=5)
    {"id": 9, "nome": "Nova Gales do Sul", "idPais": 5},
    {"id": 10, "nome": "Queensland", "idPais": 5},
]

cidades = [
    # São Paulo (idEstado=1)
    {"id": 1, "nome": "São Paulo", "idEstado": 1},
    {"id": 2, "nome": "Campinas", "idEstado": 1},
    {"id": 3, "nome": "Santos", "idEstado": 1},
    {"id": 4, "nome": "Sorocaba", "idEstado": 1},
    # Rio de Janeiro (idEstado=2)
    {"id": 5, "nome": "Rio de Janeiro", "idEstado": 2},
    {"id": 6, "nome": "Niterói", "idEstado": 2},
    {"id": 7, "nome": "Petrópolis", "idEstado": 2},
    {"id": 8, "nome": "Angra dos Reis", "idEstado": 2},
    # California (idEstado=3)
    {"id": 9, "nome": "Los Angeles", "idEstado": 3},
    {"id": 10, "nome": "San Francisco", "idEstado": 3},
    {"id": 11, "nome": "San Diego", "idEstado": 3},
    {"id": 12, "nome": "Sacramento", "idEstado": 3},
    # Texas (idEstado=4)
    {"id": 13, "nome": "Houston", "idEstado": 4},
    {"id": 14, "nome": "Dallas", "idEstado": 4},
    {"id": 15, "nome": "Austin", "idEstado": 4},
    {"id": 16, "nome": "San Antonio", "idEstado": 4},
    # Ontario (idEstado=5)
    {"id": 17, "nome": "Toronto", "idEstado": 5},
    {"id": 18, "nome": "Ottawa", "idEstado": 5},
    {"id": 19, "nome": "Mississauga", "idEstado": 5},
    {"id": 20, "nome": "Brampton", "idEstado": 5},
    # Quebec (idEstado=6)
    {"id": 21, "nome": "Montreal", "idEstado": 6},
    {"id": 22, "nome": "Quebec City", "idEstado": 6},
    {"id": 23, "nome": "Laval", "idEstado": 6},
    {"id": 24, "nome": "Gatineau", "idEstado": 6},
    # Baviera (idEstado=7)
    {"id": 25, "nome": "Munich", "idEstado": 7},
    {"id": 26, "nome": "Nuremberg", "idEstado": 7},
    {"id": 27, "nome": "Augsburg", "idEstado": 7},
    {"id": 28, "nome": "Regensburg", "idEstado": 7},
    # Berlim (idEstado=8)
    {"id": 29, "nome": "Berlim", "idEstado": 8},
    {"id": 30, "nome": "Pankow", "idEstado": 8},
    {"id": 31, "nome": "Charlottenburg", "idEstado": 8},
    {"id": 32, "nome": "Kreuzberg", "idEstado": 8},
    # Nova Gales do Sul (idEstado=9)
    {"id": 33, "nome": "Sydney", "idEstado": 9},
    {"id": 34, "nome": "Newcastle", "idEstado": 9},
    {"id": 35, "nome": "Wollongong", "idEstado": 9},
    {"id": 36, "nome": "Coffs Harbour", "idEstado": 9},
    # Queensland (idEstado=10)
    {"id": 37, "nome": "Brisbane", "idEstado": 10},
    {"id": 38, "nome": "Gold Coast", "idEstado": 10},
    {"id": 39, "nome": "Cairns", "idEstado": 10},
    {"id": 40, "nome": "Townsville", "idEstado": 10},
]

# Países
for p in paises:
    inserir_simples("Pais", ["idPais", "nmPais"], [p["id"], p["nome"]])

# Estados
for e in estados:
    inserir_simples("Estado", ["idEstado", "nmEstado"], [e["id"], e["nome"]])

# Cidades
for c in cidades:
    inserir_simples("Cidade", ["idCidade", "nmCidade"], [c["id"], c["nome"]])

# 4. Qualidade de vídeo
qualidades = ["SD", "HD", "Full HD", "4K"]
for i, q in enumerate(qualidades, 1):
    inserir_simples("QualidadeVideo", ["idQualidade", "descricao"], [i, q])

# 5. Plano
for i in range(1, 4):
    inserir_simples("Plano", ["idPlano", "nmPlano", "precoMensal", "numTelas", "Qualidadevideo_idQualidade"],
                    [i, f"Plano {i}", round(random.uniform(10, 60), 2), random.randint(1, 4), random.randint(1, len(qualidades))])

# 6. Situação Assinatura
situacoes = ["Ativa", "Cancelada", "Pendente"]
for i, s in enumerate(situacoes, 1):
    inserir_simples("SituacaoAssinatura", ["idSituacao", "descricao"], [i, s])

# 7. Tipo Conteúdo
tipos_conteudo = ["Filme", "Série", "Documentário", "Reality Show", "Minissérie", "Curta-metragem", "Show de Stand-up"]
for i, t in enumerate(tipos_conteudo, 1):
    inserir_simples("TipoConteudo", ["idTipoConteudo", "descricao"], [i, t])

# 8. Classificação Indicativa
classes = ["Livre", "10+", "12+", "14+", "16+", "18+"]
for i, c in enumerate(classes, 1):
    inserir_simples("ClassIndicativa", ["idClassIndicativa", "descricao"], [i, c])

# 9. Gênero
generos = ["Ação", "Comédia", "Drama", "Terror", "Suspense", "Ficção Científica", "Fantasia", "Romance", "Aventura", "Animação", "Documentário", "Musical", "Crime", "Mistério", "Guerra", "Histórico", "Esporte", "Biografia", "Infantil", "Erótico"]
for i, g in enumerate(generos, 1):
    inserir_simples("GeneroConteudo", ["idGenero", "descricao"], [i, g])

# 10. Usuários
# Dicionário estados por país
estados_por_pais = {}
for e in estados:
    estados_por_pais.setdefault(e["idPais"], []).append(e)

# Dicionário cidades por estado
cidades_por_estado = {}
for c in cidades:
    cidades_por_estado.setdefault(c["idEstado"], []).append(c)

usuario_ids = []
for _ in range(50):
    nome = fake.name()
    email = fake.unique.email()
    nascimento = fake.date_of_birth(minimum_age=18, maximum_age=80)
    sexo = random.choice(['M', 'F'])

    # Escolhe um país aleatório
    pais_escolhido = random.choice(paises)
    idPais = pais_escolhido["id"]

    # Escolhe um estado dentro do país escolhido
    estados_do_pais = estados_por_pais[idPais]
    estado_escolhido = random.choice(estados_do_pais)
    idEstado = estado_escolhido["id"]

    # Escolhe uma cidade dentro do estado escolhido
    cidades_do_estado = cidades_por_estado[idEstado]
    cidade_escolhida = random.choice(cidades_do_estado)
    idCidade = cidade_escolhida["id"]

    sql = """
        INSERT INTO Usuario (nome, email, dtNascimento, sexo, pais_idPais, cidade_idCidade, estado_idEstado)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """
    cursor.execute(sql, (nome, email, nascimento, sexo, idPais, idCidade, idEstado))
    usuario_ids.append(cursor.lastrowid)

# 11. Assinaturas
assinatura_ids = []
for uid in usuario_ids:
    inicio = fake.date_between(start_date="-1y", end_date="today")
    fim = inicio + timedelta(days=random.randint(30, 365))
    plano = random.randint(1, 3)
    situacao = random.randint(1, len(situacoes))
    sql = """
        INSERT INTO Assinatura (dtInicio, dtFim, Usuario_idUsuario, Plano_idPlano, SituacaoAssinatura_idSituacao)
        VALUES (%s, %s, %s, %s, %s)
    """
    cursor.execute(sql, (inicio, fim, uid, plano, situacao))
    assinatura_ids.append(cursor.lastrowid)

# 12. Conteúdo
conteudo_ids = []
for _ in range(100):
    titulo = fake.sentence(nb_words=3).rstrip('.')
    duracao = random.randint(30, 180)
    ano = random.randint(2000, 2025)
    tipo1 = random.randint(1, len(tipos_conteudo))
    tipo2 = tipo1  # mesma categoria, não entendi essa TipoConteudo_idTipoConteudo1
    class_ind = random.randint(1, len(classes))
    genero = random.randint(1, len(generos))
    sql = """
        INSERT INTO Conteudo (titulo, duracao, ano_lancamento, TipoConteudo_idTipoConteudo,
        TipoConteudo_idTipoConteudo1, ClassIndicativa_idClassIndicativa, GeneroConteudo_idGenero)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """
    cursor.execute(sql, (titulo, duracao, ano, tipo1, tipo2, class_ind, genero))
    conteudo_ids.append(cursor.lastrowid)

# 13. Avaliações
for _ in range(200):
    usuario = random.choice(usuario_ids)
    conteudo = random.choice(conteudo_ids)
    nota = random.randint(1, 5)
    sql = """
        INSERT INTO Avaliacao (Usuario_idUsuario, Conteudo_idConteudo, nota)
        VALUES (%s, %s, %s)
    """
    cursor.execute(sql, (usuario, conteudo, nota))

# 14. Sistemas Operacionais
sistemas = ["Windows", "Android", "iOS", "macOS", "Linux"]
for i, s in enumerate(sistemas, 1):
    inserir_simples("SistemaOperacional", ["idSistemaOperacional", "descricao"], [i, s])

# 15. Dispositivos
dispositivos = ["Celular", "Smart TV", "Tablet", "PC", "Console"]
for i, d in enumerate(dispositivos, 1):
    inserir_simples("Dispositivo", ["idDispositivo", "descricao", "SistemaOperacional_idSistemaOperacional"],
                    [i, d, random.randint(1, len(sistemas))])

# 16. Visualizações
for _ in range(400):
    data_hora = fake.date_time_this_year()
    duracao = random.randint(5, 180)
    usuario = random.choice(usuario_ids)
    conteudo = random.choice(conteudo_ids)
    dispositivo = random.randint(1, len(dispositivos))
    sql = """
        INSERT INTO Visualizacao (data_hora_inicio, duracao_visualizacao, Usuario_idUsuario,
        Conteudo_idConteudo, Dispositivo_idDispositivo)
        VALUES (%s, %s, %s, %s, %s)
    """
    cursor.execute(sql, (data_hora, duracao, usuario, conteudo, dispositivo))

# 17. Pagamentos
for aid in assinatura_ids:
    data_pg = fake.date_this_year()
    valor = f"{round(random.uniform(10, 60), 2)}"
    inserir_simples("Pagamento", ["idPagamento", "dtPagamento", "vlrRecebido", "Assinatura_idAssinatura"],
                    [aid, str(data_pg), valor, aid])

# 18. Artistas
for i in range(1, 31):
    inserir_simples("Artista", ["idArtista", "nmArtista"], [i, fake.name()])

# 19. Funções
funcoes = ["Ator", "Diretor", "Roteirista", "Figurante", "Produtor"]
for i, f in enumerate(funcoes, 1):
    inserir_simples("Função", ["idFuncao", "descFuncao"], [i, f])

# 20. ArtistaConteudo
for _ in range(100):
    artista = random.randint(1, 30)
    conteudo = random.choice(conteudo_ids)
    funcao = random.randint(1, len(funcoes))
    sql = """
        INSERT IGNORE INTO ArtistaConteudo (Artista_idArtista, Conteudo_idConteudo, Funcao_id_Funcao)
        VALUES (%s, %s, %s)
    """
    cursor.execute(sql, (artista, conteudo, funcao))

# 21. Episódios (associar parte do conteúdo como episódios de séries)
seriados = random.sample(conteudo_ids, 10)
for i in range(50):
    episodio = random.choice([cid for cid in conteudo_ids if cid not in seriados])
    seriado = random.choice(seriados)
    temporada = random.randint(1, 5)
    numero = random.randint(1, 10)
    sql = """
        INSERT IGNORE INTO Episodio (idConteudo, idSeriado, temporada, numero_episodio)
        VALUES (%s, %s, %s, %s)
    """
    cursor.execute(sql, (episodio, seriado, temporada, numero))

# Finalizar
conn.commit()
cursor.close()
conn.close()
print("População completa com sucesso!")
