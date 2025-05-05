*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    ../resource/keywordsapi.robot

*** Test Cases ***
Test case 1: Fazer get de um Laptop
    buscando Laptop

Test case 2: Fazer get de um Tablet
    buscando Tablet

Test case 3: Fazer login para atualizar a imagem
    Logando no sistema

TEste case 4: Alterando a imagem
    Alterando imagem do produto
   
