import util.constante as c
import util.parametro as p


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
        bloco_principal = list()  # FIXME filtrar blocos
        self.fita = [char for char in fita_original]
        # TODO lógica para verificar a aceitação

    def verificar_aceitacao(self, fita, bloco_atual):
        estado_atual = bloco_atual.estado_inicial
        while estado_atual != c.PARE and estado_atual != c.RETORNE:
            self.computacoes -= 1
            if self.computacoes < 0:
                # TODO funcao para abrir terminal (dentro do if)
                return
            # TODO funcao para verificar o verbose
            simbolo_lido = fita[self.indice]
            comandos_do_estado = list(filter(lambda comando_analisado: comando_analisado.estado_atual == estado_atual,
                                             bloco_atual.comandos))
            comando_atual = comandos_do_estado[0]
            if len(comandos_do_estado) == 1:
                # TODO adicionar outra verificacao por chamada de bloco
                if comando_atual.breakpoint:
                    # TODO funcao para abrir terminal (dentro do if)
                    return
                self.verificar_aceitacao(fita, list(filter(lambda bloco: bloco.id == comando_atual.id_bloco,
                                                           self.blocos))[0])
                estado_atual = comando_atual.estado_retorno
            else:
                comandos_coringa = list(filter(lambda comando_analisado: comando_analisado.simbolo_atual == c.CORINGA,
                                               comandos_do_estado))
                comandos_sem_coringa = list(filter(lambda comando_analisado:
                                                   comando_analisado.simbolo_atual == simbolo_lido, comandos_do_estado))
                comando = None
                try:
                    comando = comandos_coringa[0] if len(comandos_sem_coringa) == 0 else comandos_sem_coringa[0]
                except Exception as e:
                    # FIXME criar arquivo de erros
                    print(f'ERROR -- símbolo: {simbolo_lido}, estado: {estado_atual} e bloco: {bloco_atual.id}')
                    print(f'Detalhes: {e}')
                if comando.breakpoint:
                    # TODO funcao para abrir terminal (dentro do if)
                    return
                fita[self.indice] = comando.novo_simbolo if comando.novo_simbolo != c.CORINGA else fita[self.indice]
                estado_atual = comando.novo_estado if comando.novo_estado != c.CORINGA else estado_atual
                if comando.movimento != c.IMOVEL:
                    if self.indice == 0 and comando.movimento == c.ESQUERDA:
                        fita.insert(0, c.BRANCO)
                        self.indice += 1
                    if self.indice == (len(fita) - 1) and comando.movimento == c.DIREITA:
                        fita.append(c.BRANCO)
                    self.indice += 1 if comando.movimento == c.DIREITA else -1

    def abrir_terminal(self):
        novas_instrucoes = input('Informe as novas instruções: ').split(' ')  # FIXME adicionar um arquivo de mensagens
        if novas_instrucoes[0] == c.VAZIO:
            novas_instrucoes = ''  # TODO usar as ultimas instruções
        # TODO adicionar else e o restante da lógica (argumentos)
        self.computacoes = p.COMPUTACOES

    def imprimir(self, bloco_atual, estado_atual, fita_original):
        bloco = c.PONTO * (16 - len(bloco_atual.id)) + bloco_atual.id
        estado = c.ZERO * (4 - len(estado_atual)) + estado_atual
        fita_com_maximo_brancos = f'{c.BRANCO + (c.MAXIMO_BRANCO_FITA - 1)}' + ''.join(fita_original) + \
                                  f'{c.BRANCO + (c.MAXIMO_BRANCO_FITA - 1)}'
        indice_esquerda = self.indice
        indice_centro = self.indice + c.MAXIMO_BRANCO_FITA
        indice_direita = self.indice + ((2 * c.MAXIMO_BRANCO_FITA) - 1)
        resultado_fita = c.VAZIO
        indice_atual = indice_esquerda
        while indice_atual < indice_direita:
            if (indice_atual + 1) == indice_centro:
                resultado_fita = f'{resultado_fita}({fita_com_maximo_brancos[indice_atual]})'
            else:
                resultado_fita = f'{resultado_fita}{fita_com_maximo_brancos[indice_atual]}'
            indice_atual += 1
        print(f'{bloco}.{estado}: {resultado_fita}')


