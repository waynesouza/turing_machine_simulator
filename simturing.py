import sys
import utils.parametros as p
import utils.mensagens as m
import utils.arquivo as arquivo
import handlers.analisador as a


def executar():
    p.ultimas_instrucoes = sys.argv[1:len(sys.argv)]
    a.verificar_argumentos(p.ultimas_instrucoes)
    print(m.INFORMACOES_BASICAS)
    p.palavra_inicial = input(m.PALAVRA_INICIAL)
    maquina_turing = arquivo.montar_maquina_turing(sys.argv[1])
    maquina_turing.aceitar(p.palavra_inicial)
    print(m.CONTEUDO_FINAL_FITA.format(fita=maquina_turing.pegar_conteudo_fita()))


if __name__ == '__main__':
    executar()
