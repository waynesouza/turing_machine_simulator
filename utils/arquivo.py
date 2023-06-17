import utils.parametros as p
import utils.constantes as c
from maquina_turing import MaquinaTuring
from bloco import Bloco
from comando import Comando


def limpar_linha(linha):
    linha_limpa = list()
    for parte in linha:
        if parte.endswith(c.QUEBRA_DE_LINHA):
            parte = parte[:len(parte) - 1]
        if parte == c.VAZIO or parte == c.SEPARADOR_TIPO_1 or parte == c.SEPARADOR_TIPO_2:
            continue
        linha_limpa.append(parte)
    return linha_limpa


def verificar_breakpoint(argumentos):
    return ((len(argumentos) == 6) and (argumentos[5] == c.BREAKPOINT)) or \
        ((len(argumentos) == 4) and (argumentos[3] == c.BREAKPOINT))


def montar_maquina_turing(nome_arquivo):
    maquina_turing = MaquinaTuring(p.computacoes)

    with open(nome_arquivo) as arquivo:
        linhas = arquivo.readlines()
        for linha in linhas:
            argumentos = limpar_linha(linha.split(' '))
            if (len(argumentos) == 0) or argumentos[0].startswith(c.PONTO_VIRGULA) or argumentos[0].startswith(
                    c.QUEBRA_DE_LINHA) or argumentos[0].startswith(c.FIM):
                continue
            if argumentos[0] == c.BLOCO:
                maquina_turing.blocos.append(Bloco(id=argumentos[1], estado_inicial=argumentos[2]))
            else:
                if len(argumentos) == 3 or len(argumentos) == 4:
                    maquina_turing.blocos[len(maquina_turing.blocos) - 1].comandos.append(
                        Comando(estado_atual=argumentos[0], id_bloco=argumentos[1], estado_retorno=argumentos[2],
                                breakpoint=verificar_breakpoint(argumentos)))
                else:
                    maquina_turing.blocos[len(maquina_turing.blocos) - 1].comandos.append(
                        Comando(estado_atual=argumentos[0], simbolo_atual=argumentos[1], novo_simbolo=argumentos[2],
                                movimento=argumentos[3], novo_estado=argumentos[4],
                                breakpoint=verificar_breakpoint(argumentos)))
        arquivo.close()
    return maquina_turing
