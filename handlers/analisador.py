import utils.constantes as c
import utils.parametros as p


def separar_delimitadores(cabecote):
    return [cabecote[0], cabecote[1]]


def verificar_argumentos(argumentos):
    p.resume, p.verbose, p.step, p.head = [p.parametros_permitidos.get(argumento) in argumentos for argumento in
                                           p.parametros_permitidos.keys()]

    if p.step:
        parametro_step = p.parametros_permitidos['-step']
        if parametro_step in argumentos:
            p.computacoes = int(argumentos[argumentos.index(parametro_step) + 1])
        else:
            p.computacoes = int(argumentos[argumentos.index(p.parametros_permitidos['-s']) + 1])
    else:
        p.computacoes = c.COMPUTACOES

    if p.head:
        parametro_head = p.parametros_permitidos['-head']
        if parametro_head in argumentos:
            delimitadores = separar_delimitadores(argumentos[argumentos.index(parametro_head) + 1])
        else:
            delimitadores = separar_delimitadores(argumentos[argumentos.index(p.parametros_permitidos['-h']) + 1])

        p.delimitador_inicial = delimitadores[0]
        p.delimitador_final = delimitadores[1]
