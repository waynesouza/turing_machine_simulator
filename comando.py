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
        self.chamada_outro_bloco = id_bloco != '' and estado_retorno != ''

    def __str__(self):
        if self.chamada_outro_bloco:
            return f'{self.estado_atual} {self.id_bloco} {self.estado_retorno}'
        return f'{self.estado_atual} {self.simbolo_atual} -- {self.novo_simbolo} {self.movimento} {self.novo_estado}'
