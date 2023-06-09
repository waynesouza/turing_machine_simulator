import sys
import utils.parametros as p
import utils.mensagens as m
import handle.analisador as a


def executar():
    p.ultimas_instrucoes = sys.argv[1:len(sys.argv)]
    a.verificar_argumentos(p.ultimas_instrucoes)
    print(m.INFORMACOES_BASICAS)
    palavra_inicial = input(m.PALAVRA_INICIAL)
    # TODO ler o arquivo .MT


if __name__ == '__main__':
    executar()
