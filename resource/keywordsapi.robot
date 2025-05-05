*** Settings ***
Library     RequestsLibrary
Resource    ../steps/variablesapi.robot

*** Keywords ***
buscando Laptop
    Create Session    advantage    ${GET_URL}

    ${response}    GET On Session   advantage    /catalog/api/v1/products/search    params=name=HP ENVY - 17T TOUCH LAPTOP
    Should Be Equal As Strings    ${response.status_code}    200
    Log To Console    ${response}
    Log To Console    ${response.text}

buscando Tablet
    Create Session    advantage    ${GET_URL}

    ${response}    GET On Session   advantage    /catalog/api/v1/products/search    params=name=HP ELITEPAD 1000 G2 TABLET
    Should Be Equal As Strings    ${response.status_code}    200
    Log To Console    ${response}
    Log To Console    ${response.text}

Logando no sistema
    Create Session   Advantage    ${GET_URL}    

    ${header}    Create Dictionary    Content-Type=application/json

    ${response}  Post On Session   Advantage    ${LOGIN_API}  data={"email":"test@qa.com.br", "loginPassword":"Test123456", "loginUser":"TestQa123"}    headers=${header}
    Should Be Equal As Strings    ${response.status_code}    200

    Log To Console    ${response}
    Log To Console    ${response.text}

Alterando imagem do produto
    Create Session   Advantage    ${GET_URL}    verify=False

    ${header}=    Create Dictionary    
    ...    Authorization=Bearer ${TOKEN}

    ${file_content}=    Get File For Streaming Upload    ${IMAGE_PATH}
    ${file_tuple}=    Create List    image.jpg    ${file_content}    image/jpeg

    ${files}=    Create Dictionary
    ...    file=${file_tuple}
    ...    productId=${PRODUCT_ID}

    ${response}=  POST On Session   Advantage    ${ADD_IMAGE}    headers=${header}    files=${files}

    Should Be Equal As Strings    ${response.status_code}    200
    Log To Console    ${response.text}
    

