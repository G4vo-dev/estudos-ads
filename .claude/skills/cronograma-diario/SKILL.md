---
name: cronograma-diario
description: Monta o cronograma de estudos do dia (ou só o de amanhã, ou o da semana inteira, atualizando a agenda do Google) num Google Doc com as perguntas de cada sessão, corrige as respostas escritas no doc sem dar o gabarito e responde dúvidas da faculdade lendo só o material da matéria e fazendo uma pesquisa breve na internet. Use quando o usuário mandar "cronograma diário", "cronograma de amanhã", "cronograma da semana", "corrige", "respondi", "não estou conseguindo" ou uma dúvida sobre uma matéria da faculdade.
---

# Cronograma diário

Combinado com o usuário em 20/11/2026. Ele estuda ADS na Uninter (EAD) com o Ágora (caderno em `agora-notebook/`, neste repositório) e guarda o material no Google Drive, na pasta "faculdade". Responda sempre em português do Brasil, em linguagem simples.

## Regra que vale para tudo

Toda resposta passa por uma **pesquisa breve na internet** (WebSearch, modo `standard`; 1 a 3 buscas). Termine com uma lista "Fontes:" com os links usados.

O **material da faculdade manda** no que cai na APOL e na prova. Se a internet disser outra coisa (exemplo: o material chama React de framework, a documentação chama de biblioteca), avise a diferença e diga qual versão usar na prova.

## Os 5 pedidos

### 1. "cronograma diário" ou "cronograma de amanhã"

"Cronograma diário" é o dia de hoje. "Cronograma de amanhã" é **só o dia seguinte**: não inclua nada de hoje nem de outros dias.

1. **Descubra o que o usuário vai fazer no dia.** Leia, nesta ordem: a agenda do Google do dia (ferramentas de calendário do Notion); o `profile.md` do caderno do Ágora (rotina da semana e a linha "Esta semana"); os cartões vencidos (`python3 <pasta da skill agora>/scripts/fsrs.py due agora-notebook/cards.csv --limit 8`; a skill `agora` fica no repositório `claudine-skills`. Sem ela, pegue no `cards.csv` os cartões com `due` até hoje, os de menor estabilidade primeiro). Considere só as sessões de estudo do dia. Sábado é busca de emprego e domingo é folga: nesses dias, diga isso e não monte perguntas de estudo.
2. **Leia o material de cada sessão:** o resumo da matéria na pasta "0. 📝 anotações" e, se não houver resumo da aula, a apostila ou os slides na pasta da matéria. Leia só o que vai ser estudado naquele dia.
3. **Pesquise na internet** um ponto de cada sessão, para conferir um conceito ou trazer um exemplo atual.
4. **Crie um Google Doc** na pasta "6. 📅 Cronogramas diários" (dentro de "faculdade"; crie a pasta se não existir), com o título `Cronograma AAAA-MM-DD (dia da semana)` e este modelo:

```
# Cronograma de <dia da semana>, DD/MM

| Hora | O quê | Material |
|---|---|---|
(uma linha por sessão do dia; pausas e almoço também)

## Antes de começar
- Ritual de 2 min: celular no Não perturbe, só o material aberto.
- Previsão: quantas perguntas você acha que acerta? Resposta:

## Sessão 1 · <hora> · <matéria e aula>
Meta: ao final, vou conseguir ___
Pergunta-guia para o vídeo ou a leitura: ___
O que observar: (2 ou 3 itens)

Perguntas (responda DEPOIS do vídeo, sem consultar):
1. <pergunta>
   Resposta:
2. ...

(repita para cada sessão)

## Cartões de revisão
1. <pergunta do cartão>
   Resposta:

## Fontes
```

Regras das perguntas:
- 3 a 5 por sessão, tiradas do material da aula; 1 delas no formato da APOL (múltipla escolha com 4 alternativas).
- Inclua 1 pergunta de revisão de uma aula anterior (intercalada).
- Use os pontos fracos do `errors.md` do caderno: puxe o termo técnico exato e peça perguntas com várias partes (o usuário costuma responder só uma parte).
- Nunca coloque o gabarito no doc.

5. Responda no chat com o link do doc e a tabela do dia, em poucas linhas.

### 2. Correção ("corrige", "respondi", "terminei")

1. Leia o doc do dia (`read_file_content` do Drive).
2. Corrija cada resposta com **✅ certo · 🟡 parcial · ❌ errado** e uma dica que leve à resposta **sem dizer a resposta**: uma pergunta-guia, ou onde olhar (slide, página, seção do resumo). Pesquise na internet para confirmar a correção.
3. Escreva a correção **no próprio doc**, logo abaixo de cada resposta, começando com "Correção:" (Google Docs `update_doc`; ache a posição lendo o doc com `read_doc`). Se não der para editar, crie uma cópia com "(corrigido)" no título.
4. No fim do doc, acrescente: placar, previsão × resultado, o ponto forte e o erro principal do dia.
5. **Não dê o gabarito**, nem no doc nem no chat. Se o usuário pedir a resposta de forma explícita, dê só a daquela pergunta e registre como dica máxima (H5).
6. Registre no caderno do Ágora: uma linha no `sessions.csv`, os cartões revisados no `fsrs.py review` (sem a skill `agora`, mude o `due` do cartão: amanhã se errou, em 3 dias se acertou), cartões novos para o que errou e o erro no `errors.md`. Faça commit e push no repositório `estudos-ads`.
7. Responda no chat com o link do doc corrigido e o placar.

### 3. Dúvidas sobre uma matéria

1. Descubra a matéria da dúvida (Lógica, Web, Produção Textual, Formação em EaD).
2. Leia **somente** o material daquela matéria: o resumo em "0. 📝 anotações" e, se precisar, a apostila ou os slides da pasta da matéria.
3. Faça uma pesquisa breve na internet sobre a dúvida.
4. Responda no chat: explique o porquê em linguagem simples, com um exemplo, e diga onde está no material (aula, slide ou página). Se a dúvida for sobre uma pergunta do cronograma que ainda não foi corrigida, dê uma dica, não a resposta.
5. Termine com "Fontes:".

### 4. "Não estou conseguindo" (travou numa pergunta)

Ajude **na hora**, uma dica por vez, subindo a escada só se ele continuar travado. Diga em que degrau está e espere a nova tentativa antes de subir:

1. **Pergunta-guia:** uma pergunta que aponte o caminho ("o que essa palavra lembra da aula X?").
2. **Onde olhar:** a aula e o slide, a página ou a seção do resumo, e o conceito-chave envolvido.
3. **Exemplo parecido:** um exemplo resolvido de outra situação, com a mesma ideia.
4. **Primeiro passo:** começar a resposta junto com ele e deixar o resto para ele terminar.
5. **Resposta completa:** só se ainda travar depois do degrau 4, ou se ele pedir a resposta com todas as letras. Explique o porquê, faça na hora uma pergunta parecida para ele responder sozinho e transforme a questão em cartão de revisão.

Anote no caderno do Ágora até que degrau ele precisou (`max_hint` H1 a H5). Se ele travar em 3 perguntas seguidas, diminua o nível das próximas e sugira uma pausa curta.

### 5. "cronograma da semana"

Planeja a semana inteira (segunda a domingo) e **atualiza a agenda do Google** para ficar igual ao plano.

1. **Qual semana:** de segunda a sexta, é a semana atual, a partir de hoje. No sábado ou no domingo, é a semana seguinte.
2. **Levante o que falta:** leia o `profile.md` do caderno (rotina da semana, plano de 12 semanas, datas das APOLs e metas), o `sessions.csv` (o que já foi feito), o `errors.md` (pontos fracos), o "Mapa da APOL" em "0. 📝 anotações" e a agenda do Google da semana (ferramentas de calendário do Notion).
3. **Monte o plano em cima da rotina fixa**: os blocos de 8h às 10h e de 14h às 15h nos dias de estudo, busca de emprego no sábado e folga no domingo. Para cada bloco, diga a matéria **e a aula ou o tema exato**. Priorize, nesta ordem: o que está atrasado, o que cai na próxima APOL, os pontos fracos e conteúdo novo. Respeite o teto de 3 horas de estudo por dia e o modo atenção. Pesquise na internet o calendário acadêmico ou algum ponto do conteúdo, se precisar.
4. **Crie um Google Doc** na pasta "6. 📅 Cronogramas diários" com o título `Semana DD-MM a DD-MM`: a tabela da semana (dia × manhã × tarde), as metas da semana (aulas que vão ser fechadas e APOLs), os pontos fracos que entram nas revisões e as fontes.
5. **Atualize a agenda:** para cada bloco da semana, edite **só a ocorrência daquele dia** do evento repetido (título com a matéria e a aula, descrição com o que estudar), sem mudar a série. Crie eventos novos para o que não existe (diagnóstico, APOL, sessão extra) e apague ou mova as ocorrências que saíram do plano. Mude a série inteira só se o usuário pedir uma mudança fixa de rotina. Depois liste os eventos da semana para conferir se ficaram certos.
6. Registre a semana no `profile.md` do caderno (linha "Esta semana"), faça commit e push no `estudos-ads`.
7. Responda no chat com o link do doc, a tabela da semana e o que mudou na agenda.
