# Seleção de características e prognóstico de falhas

Repositório destinado ao desenvolvimento do trabalho final de Inteligência Artificial.

##### Equipe:
- Iarah Gonçalves de Almeida
- Paulo Augusto Borges de Matos
- David Walter Jansen

### Descrição do trabalho
O [PHM Society Conference Data Challenge de 2010](http://www.phmsociety.org/competition/phm/10) foi um desafio focado na estimação da RUL (do inglês, *Remaining Useful Life*) para fresas de 3 cortes de uma fresadora CNC de alta velocidade, utilizando dados de dinamômetro, acelerômetro e emissão acústica. Neste trabalho, pretendemos desenvolver, para a base de dados disponibilizada, um método baseado em árvore de decisão para a seleção de características e, posteriormente, um método baseado em sistemas nebulosos para realizar o prognóstico e estimativa da RUL.

### Base de dados
O conjunto de dados é constituído de 6 experimentos de fresas de 3 cortes, chamados c1, c2, ..., c6. Destes, c1, c4 e c6 são dados de treinamento, e c2, c3 e c5 são dados de teste. Para cada um desses experimentos foram disponibilizados dados de 315 cortes, mas o nível de desgaste foi disponibilizado apenas para os conjuntos de treinamento. Para cada conjunto de treinamento há um arquivo de desgaste que lista o desgaste da fresa para cada um de seus 3 cortes (*flute*).

Os dados obtidos pelo dinamômetro, acelerômetro e de emissão acústica foram gravados para os 315 cortes de cada experimento. Dessa forma, cada experimento contém 7 colunas, a saber:

| Coluna 1 | Coluna 2 | Coluna 3 | Coluna 4 | Coluna 5 | Coluna 6 | Coluna 7 |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Força (N) na dimensão X | Força (N) na dimensão Y | Força (N) na dimensão Z | Vibração (g) na dimensão X | Vibração (g) na dimensão Y | Vibração (g) na dimensão Z | AE-RMS (V)

Os dados brutos foram então transformados em 17 características:

- Dinamômetro: valor quadrático médio (*Root Mean Square* - *RMS*), pico (valor máximo) e desvio padrão (*std*). Cada medida foi extraída para cada eixo, totalizando 9 colunas.
- Acelerômetro: RMS e curtose. Cada medida foi extraída para cada eixo, totalizando 6 colunas.
- Emissão acústica: média e desvio padrão, totalizando 2 colunas.
