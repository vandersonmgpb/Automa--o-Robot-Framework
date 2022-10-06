*** Settings ***
Documentation    Suite Exemplo Testing
Resource        resource.robot
Test Setup    abrir o navegador
Test Teardown    fechar o navegador

*** Test Cases ***

Caso de Teste 01: Pesquisar um produto no site 
    [Documentation]    Aplicando os conhecimentos obtidos no Bootcamp da - Prime Hero Academy - PHA, na pratica em uma automacao web
    [Tags]    busca produto
    Acessar a pagina inicial do site da loja
    Ditiar o produto "blouse" no campo de pesquisa
    Clicar no botao Pesquisar
    Conferir se o produto "blouse" foi exibido corretamente 
    Fechar o navegador
    