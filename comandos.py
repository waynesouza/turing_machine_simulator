class Comando:
    def __init__(self, estado_atual='', simbolo_atual='', novo_simbolo='', movimento='', novo_estado='', id_bloco='',
                 estado_retorno='', breakpoint=False):
        self.estado_atual = estado_atual
        self.simbolo_atual =simbolo_atual
        self.novo_simbolo = novo_simbolo
        self.movimento = movimento
        self.novo_estado = novo_estado
        self.id_bloco = id_bloco
        self.estado_retorno = estado_retorno
        self.breakpoint = breakpoint

    def __str__(self):
        return f'{self.estado_atual} {self.simbolo_atual} -- {self.novo_simbolo} {self.movimento} {self.novo_estado}'
