***Settings***
Library     SeleniumLibrary
Resource   ../steps/variables.robot

*** Keywords ***
abrir site da loja
    Open Browser    ${URL}   ${browser}
    maximize browser window
    sleep    10s

Fazer login na loja com usuario e senha
    wait until element is visible  ${login}    timeout=10s
    click element    ${login}
    sleep    5s
    wait until element is visible  ${input_user}    timeout=10s
    click element    ${input_user}
    input text    ${input_user}    ${user}
    sleep    5s
    wait until element is visible  ${input_password}    timeout=10s
    click element    ${input_password}
    input text    ${input_password}    ${password}
    sleep    5s
    wait until element is visible  ${sign_in}    timeout=10s
    click element    ${sign_in}
    sleep    5s
    

clicar no botao tablets
    wait until element is visible   ${button_tablets}    timeout=10s   
    click element    ${button_tablets}
    sleep    5s
    
Selecionar um produto da categoria tablets
    wait until element is visible  ${button_hpelite}    timeout=10s
    click element    ${button_hpelite}
    sleep   5s

Adicionando produto ao carrinho
    wait until element is visible  ${button_add_to_cart}    timeout=10s
    click element    ${button_add_to_cart}
    sleep   5s

Acessando o checkout
    wait until element is visible  ${button_checkout}       timeout=0.5s
    click element    ${button_checkout}
    sleep   5s
    
Verificando produto
    wait until element is visible  ${next_btn}    timeout=5s
    click element    ${next_btn}
    Wait Until Element Is Not Visible    ${product_name}    timeout=5s
    page should contain    ${product_name}
    sleep   5s