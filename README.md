# Turing Machine Simulator

Este repositório contém uma aplicação em Python que simula uma Máquina de Turing (MT) para resolver o problema descrito nos arquivos [enunciado.pdf](https://github.com/waynesouza/turing_machine_simulator/blob/main/docs/enunciado.pdf) e [enunciado_parte_2.pdf](https://github.com/waynesouza/turing_machine_simulator/blob/main/docs/enunciado_parte_2.pdf).

## Sobre o Problema

O problema consiste em simular o funcionamento de uma Máquina de Turing, um modelo teórico de computação desenvolvido por Alan Turing. A Máquina de Turing é uma máquina abstrata capaz de manipular símbolos em uma fita de maneira determinística, seguindo uma série de regras.

O enunciado do problema, presente no arquivo [enunciado.pdf](https://github.com/waynesouza/turing_machine_simulator/blob/main/docs/enunciado.pdf), descreve a especificação de uma Máquina de Turing em particular, incluindo a definição da fita inicial, os estados, as transições e a configuração de aceitação.

## Requisitos

- Python 3.x

## Como Usar

1. Clone este repositório em sua máquina local:

   ```bash
   git clone https://github.com/waynesouza/turing_machine_simulator
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd turing_machine_simulator
   ```

3. Execute o script principal para iniciar a aplicação:

   ```bash
   python3 python3 simturing.py palindromo.MT -v
   ```

4. Siga as instruções exibidas no terminal para interagir com a Máquina de Turing.

## Arquivos

- `simturing.py`: O script principal que contém a leitura do arquivo e a execução da máquina.
- `bloco.py`: O módulo que define a classe `Bloco` responsável por guardar as informações referentes ao bloco.
- `comando.py`: O módulo que define a classe `Comando` responsável por guardar as informações referentes aos comandos.
- `maquina_turing.py`: O módulo que define a classe `TuringMachine` responsável por simular o comportamento da Máquina de Turing.
- `handlers/analisador.py`: O arquivo com a lógica para verificar os argumentos recebidos.
- `utils/arquivo.py`: O arquivo com a implementação da leitura de um arquivo de texto e o tratamento das informações para o modelo definido no enunciado.
- `utils/constantes.py`: O arquivo com as constantes usadas no projeto.
- `utils/mensagens.py`: O arquivo com as mensagens usadas no projeto.
- `utils/parametros.py`: O arquivo com a declaração dos parâmetros presentes no projeto.
- `docs/enunciado.pdf`: O arquivo com as instruções detalhadas do problema a ser resolvido pela Máquina de Turing.
- `docs/enunciado_parte_2.pdf`: O arquivo com as instruções detalhadas do problema para realizar a operação de adição.
- `palindromo.MT`: O arquivo contem a implementação de um reconhecedor de palíndromos.
- `README.md`: O arquivo contem as informações sobre o repositório e instruções de uso.
