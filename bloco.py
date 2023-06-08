class Bloco:
    def __init__(self, id='', estado_inicial='', comandos=None):
        if comandos is None:
            comandos = list()
        self.id = id
        self.estado_inicial = estado_inicial
        self.comandos = comandos

    def __str__(self):
        return f'{self.id} ({len(self.comandos)} comandos)'
