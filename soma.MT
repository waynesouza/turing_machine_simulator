;_________________________________MAIN____________________________________
bloco main 100
  100 verificaCadeia 101

  101 adiciona# 102

  102 = -- = e 103
  102 * -- * d 102

;_____________________________MAPEAMENTO NUMEROS_____________________________
; Z = 0
; U = 1
; D = 2
; T = 3
; Q = 4
; C = 5
; S = 6
; E = 7
; O = 8
; N = 9
;_____________________________________________________________________________

  103 0 -- Z e 0
  103 1 -- U e 1
  103 2 -- D e 2
  103 3 -- T e 3
  103 4 -- Q e 4
  103 5 -- C e 5
  103 6 -- S e 6
  103 7 -- E e 7
  103 8 -- O e 8
  103 9 -- N e 9
  103 + -- + i 111
  103 * -- * e 103

  ; O estado representa o número que vai ser somado, de acordo com o número vai ser mandado para um bloco eespecifico
  0 soma0X 94
  1 soma1X 94
  2 soma2X 94
  3 soma3X 94
  4 soma4X 94
  5 soma5X 94
  6 soma6X 94
  7 soma7X 94
  8 soma8X 94
  9 soma9X 94


  94 # -- # e 95
  94 _ -- _ i 95
  94 * -- * e 94
  95 _ -- _ i 96
  95 * -- * e 95

  96 * -- * i 102

  111 somaDiferente 112
  112 organizaResposta 99

  99 * -- * i pare
fim

bloco verificaCadeia 9
  9 0 -- * d 1
  9 1 -- * d 1
  9 2 -- * d 1
  9 3 -- * d 1
  9 4 -- * d 1
  9 5 -- * d 1
  9 6 -- * d 1
  9 7 -- * d 1
  9 8 -- * d 1
  9 9 -- * d 1
  9 * -- * e 3

  1 0 -- * d 1
  1 1 -- * d 1
  1 2 -- * d 1
  1 3 -- * d 1
  1 4 -- * d 1
  1 5 -- * d 1
  1 6 -- * d 1
  1 7 -- * d 1
  1 8 -- * d 1
  1 9 -- * d 1
  1 + -- * d 2
  1 * -- * e 3

  2 0 -- * d 2
  2 1 -- * d 2
  2 2 -- * d 2
  2 3 -- * d 2
  2 4 -- * d 2
  2 5 -- * d 2
  2 6 -- * d 2
  2 7 -- * d 2
  2 8 -- * d 2
  2 9 -- * d 2
  2 = -- * d 5
  2 * -- * e 3

  5 _ -- _ e 4
  5 * -- * e 3

  3 erro 304

  304 * -- * i pare


  4 * -- * e 4
  4 _ -- _ d retorne
fim

; Este bloco vai colocar o # no inicio da palavra
bloco adiciona# 1
  1 _ -- # d retorne
  1 * -- * e 1
fim

bloco erro 1
  1 * -- * e 1
  1 _ -- _ d 2

  2 * -- _ d 2
  2 _ -- _ e 3

  3 _ -- E d 4
  4 _ -- R d 5
  5 _ -- R d 6
  6 _ -- O d 7

  7 _ -- _ i pare
fim

;_________________________________SOMA NUMERO COM X_______________________________________
bloco soma0X 11
  11 + -- + e 12
  11 * -- * e 11

 12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result0 14

  0 result0 14
  1 result1 14
  2 result2 14
  3 result3 14
  4 result4 14
  5 result5 14
  6 result6 14
  7 result7 14
  8 result8 14
  9 result9 14

  14 * -- * d retorne
fim

bloco soma1X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result1 14

  0 result1 14
  1 result2 14
  2 result3 14
  3 result4 14
  4 result5 14
  5 result6 14
  6 result7 14
  7 result8 14
  8 result9 14
  9 result10 14

  14 * -- * d retorne
fim
bloco soma2X 11

  11 + -- + e 12
  11 * -- * e 11


  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  0 result2 14
  1 result3 14
  2 result4 14
  3 result5 14
  4 result6 14
  5 result7 14
  6 result8 14
  7 result9 14
  8 result10 14
  9 result11 14

  14 * -- * d retorne
fim

bloco soma3X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result3 14

  0 result3 14
  1 result4 14
  2 result5 14
  3 result6 14
  4 result7 14
  5 result8 14
  6 result9 14
  7 result10 14
  8 result11 14
  9 result12 14

  14 * -- * d retorne
fim

bloco soma4X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result4 14

  0 result4 14
  1 result5 14
  2 result6 14
  3 result7 14
  4 result8 14
  5 result9 14
  6 result10 14
  7 result11 14
  8 result12 14
  9 result13 14

  14 * -- * d retorne
fim

bloco soma5X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result5 14

  0 result5 14
  1 result6 14
  2 result7 14
  3 result8 14
  4 result9 14
  5 result10 14
  6 result11 14
  7 result12 14
  8 result13 14
  9 result14 14

  14 * -- * d retorne
fim

bloco soma6X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result6 14
  0 result6 14
  1 result7 14
  2 result8 14
  3 result9 14
  4 result10 14
  5 result11 14
  6 result12 14
  7 result13 14
  8 result14 14
  9 result15 14

  14 * -- * d retorne
fim

bloco soma7X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result7 14
  0 result7 14
  1 result8 14
  2 result9 14
  3 result10 14
  4 result11 14
  5 result12 14
  6 result13 14
  7 result14 14
  8 result15 14
  9 result16 14

  14 * -- * d retorne
fim

bloco soma8X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result8 14
  0 result8 14
  1 result9 14
  2 result10 14
  3 result11 14
  4 result12 14
  5 result13 14
  6 result14 14
  7 result15 14
  8 result16 14
  9 result17 14

  14 * -- * d retorne
fim

bloco soma9X 11
  11 + -- + e 12
  11 * -- * e 11

  12 0 -- Z d 0
  12 1 -- U d 1
  12 2 -- D d 2
  12 3 -- T d 3
  12 4 -- Q d 4
  12 5 -- C d 5
  12 6 -- S d 6
  12 7 -- E d 7
  12 8 -- O d 8
  12 9 -- N d 9
  12 # -- # d 17
  12 * -- * e 12

  17 result9 14

  0 result9 14
  1 result10 14
  2 result11 14
  3 result12 14
  4 result13 14
  5 result14 14
  6 result15 14
  7 result16 14
  8 result17 14
  9 result18 14

  14 * -- * d retorne
fim

;___________________________Resultados SOMA ____________________________________
bloco result0 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 0 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result1 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 1 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result2 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 2 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result3 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 3 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result4 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 4 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result5 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 5 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result6 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 6 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result7 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 7 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result8 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 8 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result9 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 9 e 3

  3 somaResto 4
  4 * -- * i retorne
fim

bloco result10 1
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 0 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result11 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 1 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result12 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 2 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result13 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 3 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result14 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 4 e 3

  3 somaResto 4

  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result15 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 5 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result16 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 6 e 3

  3 somaResto 4
  4 adicionaResto 5
  5 * -- * e retorne
fim

bloco result17 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 7 e 3

  3 somaResto 4

  4 adicionaResto 5

  5 * -- * e retorne
fim

bloco result18 0
  0 # -- # e 1
  0 * -- * e 0
  1 _ -- _ i 2
  1 * -- * e 1
  2 _ -- 8 e 3

  3 somaResto 4

  4 adicionaResto 5
  5 * -- * e retorne
fim

;_________________________________SOMA RESTO_______________________________________
bloco somaResto 11
  11 * -- * d 11
  11 = -- = d 12

  12 _ -- _ e 13
  12 1 -- _ e 14

  13 * -- * e 13
  13 _ -- _ d 16

  14 * -- * e 14
  14 _ -- _ d 15

  15 0 -- 1 e 16
  15 1 -- 2 e 16
  15 2 -- 3 e 16
  15 3 -- 4 e 16
  15 4 -- 5 e 16
  15 5 -- 6 e 16
  15 6 -- 7 e 16
  15 7 -- 8 e 16
  15 8 -- 9 e 16

  15 9 -- 0 e 19
  19 adicionaResto 20

  20 * -- * e 20
  20 _ -- _ d 16

  16 * -- * i retorne
fim

;_________________________________Escreve Resto_______________________________________
bloco adicionaResto 1
  1 * -- * d 1
  1 = -- = d 2

  2 * -- * d 2
  2 _ -- 1 e retorne
fim

;_________________________________ MOVER_______________________________________
bloco somaDiferente 21
  21 * -- * e 21
  21 # -- # d 11

  22 * -- * d 22
  22 # -- # d 11

  11 * -- * d 11
  11 + -- + d 12
  11 Z -- * e 13
  11 U -- * e 13
  11 D -- * e 13
  11 T -- * e 13
  11 Q -- * e 13
  11 C -- * e 13
  11 S -- * e 13
  11 E -- * e 13
  11 O -- * e 13
  11 N -- * e 13

  13 0 -- Z e 0
  13 1 -- U e 1
  13 2 -- D e 2
  13 3 -- T e 3
  13 4 -- Q e 4
  13 5 -- C e 5
  13 6 -- S e 6
  13 7 -- E e 7
  13 8 -- O e 8
  13 9 -- N e 9
  13 # -- # d retorne

  0 result0 22
  1 result1 22
  2 result2 22
  3 result3 22
  4 result4 22
  5 result5 22
  6 result6 22
  7 result7 22
  8 result8 22
  9 result9 22

  12 * -- * e 12
  12 # -- # d retorne
fim

;_________________________________ Organiza a Saida_______________________________________
bloco organizaResposta 1
  1 _ -- * d 2
  1 * -- * e 1
  2 moveResultado 3

  3 Z -- 0 d 3
  3 U -- 1 d 3
  3 D -- 2 d 3
  3 T -- 3 d 3
  3 Q -- 4 d 3
  3 C -- 5 d 3
  3 S -- 6 d 3
  3 E -- 7 d 3
  3 O -- 8 d 3
  3 N -- 9 d 3

  3 = -- = e 4
  3 + -- + d 3

  4 * -- * e 4
  4 _ -- _ d retorne
fim

bloco moveResultado 11
  11 0 -- _ d 0
  11 1 -- _ d 1
  11 2 -- _ d 2
  11 3 -- _ d 3
  11 4 -- _ d 4
  11 5 -- _ d 5
  11 6 -- _ d 6
  11 7 -- _ d 7
  11 8 -- _ d 8
  11 9 -- _ d 9

  11 # -- _ d retorne

  0 * -- * d 0
  0 _ -- 0 e 12

  1 * -- * d 1
  1 _ -- 1 e 12

  2 * -- * d 2
  2 _ -- 2 e 12

  3 * -- * d 3
  3 _ -- 3 e 12

  4 * -- * d 4
  4 _ -- 4 e 12

  5 * -- * d 5
  5 _ -- 5 e 12

  6 * -- * d 6
  6 _ -- 6 e 12

  7 * -- * d 7
  7 _ -- 7 e 12

  8 * -- * d 8
  8 _ -- 8 e 12

  9 * -- * d 9
  9 _ -- 9 e 12

  12 _ -- * d 11
  12 * -- * e 12
fim
