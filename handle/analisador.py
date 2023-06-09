import utils.constantes as c
import utils.parametros as p


def separar_delimitadores(cabecote):
    return [cabecote[0], cabecote[1]]


def verificar_argumentos(argumentos):
    p.resume = p.parametros_permitidos[0][0] in argumentos or p.parametros_permitidos[0][1] in argumentos
    p.verbose = p.parametros_permitidos[1][0] in argumentos or p.parametros_permitidos[1][1] in argumentos
    p.step = p.parametros_permitidos[2][0] in argumentos or p.parametros_permitidos[2][1] in argumentos
    p.head = p.parametros_permitidos[3][0] in argumentos or p.parametros_permitidos[3][1] in argumentos

    if p.step:
        if p.parametros_permitidos[2][0] in argumentos:
            p.computacoes = int(argumentos[argumentos.index(p.parametros_permitidos[2][0]) + 1])
        else:
            p.computacoes = int(argumentos[argumentos.index(p.parametros_permitidos[2][1]) + 1])
    else:
        p.computacoes = c.COMPUTACOES

    if p.head:
        if p.parametros_permitidos[3][0] in argumentos:
            delimitadores = separar_delimitadores(argumentos[argumentos.index(p.parametros_permitidos[3][0]) + 1])
        else:
            delimitadores = separar_delimitadores(argumentos[argumentos.index(p.parametros_permitidos[3][1]) + 1])

        p.delimitador_inicial = delimitadores[0]
        p.delimitador_final = delimitadores[1]
