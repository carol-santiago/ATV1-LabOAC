# Laboratório 01 – Multiplexador 4:1 (32 bits)
> Disciplina: Laboratório de Organização e Arquitetura de Computadores

## Descrição

Implementação de um multiplexador 4:1 com entradas de 32 bits em SystemVerilog,
acompanhado de testbench e simulação no ModelSim (Intel FPGA Starter Edition 2020.1).

## Estrutura do repositório

- `src/` — código-fonte e projeto do ModelSim:
  - `mux4to1.sv` — módulo do multiplexador.
  - `tb_mux4to1.sv` — testbench.
  - `lab1.mpf` — arquivo de projeto do ModelSim (permite abrir o projeto
    pronto, com os arquivos já associados).
- `demo mux atv1-laboac.mp4` — captura de tela demonstrando a compilação e a
  execução da simulação no ModelSim, com os resultados PASS/FAIL no Transcript.

## Como rodar o projeto

1. Abra o ModelSim.
2. Vá em `File > Change Directory` e selecione a pasta `src`.
3. Abra o projeto existente em `File > Open Project` e selecione o arquivo
   `lab1.mpf`.
4. Na aba Project, selecione os dois arquivos `.sv`, clique com o botão
   direito e escolha `Compile > Compile Selected`.
5. Vá em `Simulate > Start Simulation`, expanda a biblioteca `work` e
   selecione `tb_mux4to1`. Clique em OK.
6. Adicione os sinais à janela Wave (selecione todos em Objects, botão
   direito > `Add to > Wave > Selected Signals`).
7. No Transcript, execute:
   ```
   run -all
   ```
8. Verifique no Transcript as mensagens `[PASS]` confirmando que a saída do
   multiplexador corresponde ao valor esperado para cada seleção testada, e
   observe as formas de onda na janela Wave.

## Resultado esperado

Cinco casos de teste, todos com `[PASS]`, cobrindo as quatro entradas
(`sel = 00, 01, 10, 11`) e uma mudança dinâmica de entrada com `sel` fixo,
comprovando a propagação correta do sinal selecionado.