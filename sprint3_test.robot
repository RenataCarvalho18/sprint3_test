*** Settings ***
Resource    sprint3_resources.robot
Library    SeleniumLibrary
Test Setup    Abrir navegador
Test Teardown    Close Browser

***Test Case***
Tela de login
    Dado que o usuario admin esteja na tela de login
    Quando ele clicar no campo E-mail
    E digitar um email valido
    E clicar no campo senha
    E digitar senha correta
    E clicar no botão Acessar
    Então ele deve ser direcionado para a tela Home