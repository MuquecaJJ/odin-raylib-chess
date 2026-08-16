# odin-chess

Motor de xadrez em Odin + raylib. Projeto de estudo.

## Objetivo

Aprender programação em linguagem compilada escrevendo código à mão. O xadrez foi escolhido porque as regras já existem e são inquestionáveis — o problema nunca é *"como deveria funcionar?"*, apenas *"por que meu código não faz o que deveria?"*.

## Definição de PRONTO

> Um jogador humano joga uma partida completa de xadrez contra a máquina em nível fácil.

**"Nível fácil"** significa: minimax de profundidade 2–3 lances, com avaliação simples (valor material das peças + bônus pequeno por controle do centro). Punir erro grosseiro, perder para quem pensa.

## Fora de escopo

Registrado para resistir à tentação depois:

- Poda alfa-beta
- Tabelas de transposição
- Ordenação de movimentos
- Livro de aberturas
- Finais tabelados
- Multiplayer, áudio, animações

## Roadmap

- [x] Tabuleiro 8x8 desenhado na tela
- [x] Detecção da casa sob o cursor
- [ ] Seleção de casa por clique
- [ ] Estado do tabuleiro em memória
- [ ] Peças desenhadas a partir do estado
- [ ] Movimento pseudo-legal por tipo de peça
- [ ] Dois jogadores no mesmo teclado
- [ ] Xeque e movimentos legais
- [ ] Xeque-mate, afogamento, fim de partida
- [ ] Roque, en passant, promoção
- [ ] Função de avaliação
- [ ] Minimax raso

## Stack

- [Odin](https://odin-lang.org/)
- [raylib](https://www.raylib.com/) (via `vendor:raylib`)

## Como rodar

```bash
odin run .
```

Requer Odin no PATH e Visual Studio Build Tools instalados (Windows).
