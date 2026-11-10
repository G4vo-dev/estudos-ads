# ÁGORA — Registro de erros
Tipos: CON conceito · PROC procedimento · READ leitura errada do enunciado · SLIP descuido · STRAT estratégia · PREREQ pré-requisito faltando.
Status: aberto → revisado → fechado (fechado = não se repetiu em 2 revisões).

| data | tema | o que aconteceu | tipo | causa raiz | correção | sinal de alerta | status |
|---|---|---|---|---|---|---|---|
| 2026-11-06 | Python: input() | Disse que float() "traduz" o texto; esqueceu que input() devolve string | CON | Confunde o verbo do compilador (traduzir) com o da conversão de tipo | input() devolve STRING; float()/int() CONVERTEM. Sem isso: "4" + "6" = "46" e TypeError | Uma conta com input() sem float()/int() em volta | aberto |
| 2026-11-06 | Python: precedência | Média escrita sem parênteses (n1 + n2 / 2) | PROC | Não aplica a ordem das operações (/ antes de +) | Média = (n1 + n2) / 2; testar com valores que mudam o resultado (4 e 6 → 5, não 7) | "Rodou sem erro" tratado como "está certo" | aberto |
| 2026-11-06 | Tipos de erro | Confunde erro de sintaxe com erro de semântica | CON | Classifica pelo efeito, não pela causa | Sintaxe = faltou símbolo/recuo (IndentationError); semântica = faltou sentido (TypeError); lógica = resultado errado sem aviso | Erro que não diz "faltou símbolo" chamado de sintaxe | aberto |
| 2026-11-09 | Resposta técnica (geral) | Troca o termo técnico por palavra comum e inventa palavras ("fiscalização", "reversível", "síntese" no lugar de sintaxe) | STRAT | Responde pelo sentido aproximado em vez de buscar o termo exato | Antes de responder, perguntar "qual é a palavra do material?"; usar o dicionário de prova | Resposta sem nenhum termo em negrito do material | aberto |
