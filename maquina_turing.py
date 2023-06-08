class MaquinaTuring:
    def __init__(self, computacoes, blocos=None):
        if blocos is None:
            blocos = list()
        self.indice = 0
        self.fita = list()
        self.computacoes = computacoes
        self.blocos = blocos

    def pegar_conteudo_fita(self):
        return ''.join(self.fita)

    def aceitar(self, fita_original):
        bloco_principal = list() # FIXME filtrar blocos
        self.fita = [char for char in fita_original]
        # TODO lógica para verificar a aceitação

