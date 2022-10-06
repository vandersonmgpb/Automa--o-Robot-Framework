*** settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    firefox
${URL}        http://automationpractice.com/index.php

*** Keywords ***
Acessar a pagina inicial do site da loja
    Open Browser    url=${URL}    browser=${BROWSER}

Ditiar o produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botao Pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi exibido corretamente 
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Fechar o navegador
    Close Browser

