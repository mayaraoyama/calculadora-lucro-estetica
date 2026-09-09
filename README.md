# calculadora-lucro-estetica
Ferramenta de cálculo de lucro para clínicas de estética — desenvolvida em Python e Shell Script

Ferramenta para cálculo de lucro em procedimentos estéticos, desenvolvida em **duas versões equivalentes**: Python e Shell Script (Bash). O projeto nasceu da minha experiência de 11 anos em gestão de clínicas de estética, aplicando lógica de programação a um problema real de precificação e rentabilidade de procedimentos.

## 💡 O que o projeto faz

O usuário informa os dados de um procedimento realizado, e o sistema calcula:
- Lucro bruto por sessão
- Lucro bruto total (considerando a quantidade de sessões)
- Lucro líquido, já considerando desconto de 10% para pagamento à vista
- Um alerta indicando se o lucro está satisfatório (acima de R$300) ou se a precificação precisa ser revisada

O cálculo se repete em loop até o usuário decidir parar.

## 🐍 Versão Python (`calculadora.ipynb`)

Desenvolvida no Google Colab. Utiliza:
- `input()` para capturar dados do usuário
- Conversão de tipos (`int()`, `float()`) para os cálculos matemáticos
- Estrutura condicional (`if/else`) para avaliar o lucro
- Loop `while` para permitir múltiplos cálculos na mesma execução

### Como executar
1. Abra o arquivo `calculadora.ipynb` no [Google Colab](https://colab.research.google.com/)
2. Execute a célula de código
3. Responda as perguntas no console conforme solicitado (procedimento, quantidade, valor da sessão, valor do produto)

## 🖥️ Versão Shell Script (`calculadora.sh`)

Reescrita da mesma lógica em Bash, para praticar sintaxe de shell scripting e o uso do comando `bc` (biblioteca de cálculo do Linux, necessária porque o Bash não faz contas com decimais nativamente).

### Como executar

**Pré-requisitos**: Linux, WSL (Windows Subsystem for Linux) ou macOS, com o pacote `bc` instalado.

```bash
# 1. Dar permissão de execução ao arquivo (só precisa fazer uma vez)
chmod +x calculadora.sh

# 2. Executar o script
./calculadora.sh
```

Se o `bc` não estiver instalado, instale com:
```bash
sudo apt
