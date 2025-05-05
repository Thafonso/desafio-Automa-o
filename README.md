# desafio-Automação

# 🛒 Projeto de Automação - Advantage Online Shopping

Este projeto tem como objetivo automatizar o fluxo de compra no site [Advantage Online Shopping](https://advantageonlineshopping.com/) utilizando **Robot Framework** com **SeleniumLibrary**.

## ✅ Funcionalidades Automatizadas

- Abertura do site
- Login com usuário e senha
- Navegação até a categoria "Tablets"
- Seleção de um produto (HP ElitePad 1000 G2 Tablet)
- Adição do produto ao carrinho
- Acesso à tela de pagamento (checkout)
- Validação do produto na tela de pagamento

---

## ⚙️ Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/) --> digite no terminal "pip install robotframework-seleniumlibrary" para instalar essa biblioteca
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- Python 3.13
- Google Chrome (com chromedriver) --> digite no terminal "pip install chormedriver" para instalar
- VSCode (recomendado para edição)

---

## 📁 Estrutura do Projeto

desafio_automacao/
│
├── tests/
│ └── webtest.robot # Casos de teste organizados
|     apitest.robot
│
├── resource/
│ └── keywords.robot # Palavras-chave reutilizáveis (ações)
│     keywordsapi.robot
|
├── steps/
│ └── variables.robot # Variáveis globais (locators e dados)
│     variablesapi.robot
|
├── .venv/ # Ambiente virtual Python --> para criar digitar no terminal "python3 -m venv .venv" e após criar, digitar ".\.venv\Scripts\activate.ps1" para ativar
├── README.md

## 💻 para rodar o projeto

- Digitar no terminal "robot -d 'nomedapasta''nomedoarquivo.robot'"
- o (-d) cria uma pasta com os logs/resultados do teste que acabou de rodar

