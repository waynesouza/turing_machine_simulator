import sys
import util.parametro as p
import handle.analisador as a


def executar():
    p.ultimas_instrucoes = sys.argv[1:len(sys.argv)]
    a.verificar_argumentos(p.ultimas_instrucoes)
    # TODO print com o nome ... (arquivo de mensagens)
    palavra_inicial = input('Informe a palavra inicial: ')  # FIXME usar arquivo de mensagens
    # TODO ler o arquivo .MT
