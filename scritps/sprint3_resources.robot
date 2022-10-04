*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://matera/Avaliador/QA/login





*** Keywords ***

Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Dado que o usuario admin esteja na tela de login
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=//img[contains(@alt,'Logo')]  
Quando ele clicar no campo E-mail
    Click Element    locator=//input[contains(@name,'email')]
E digitar um email valido
    Input Text    locator=//input[contains(@name,'email')]    text=admin.rh@valgroupco.com
E clicar no campo senha
    Click Element    locator=//input[contains(@name,'senha')]
E digitar senha correta
    Input Text    locator=//input[contains(@name,'senha')]    text=valgroup2022
E clicar no botão Acessar
    Click Button    locator=//button[@class='px-10 py-2 text-white bg-[#1D284A] rounded-[4px] hover:bg-[#222d50] text-[12px] font-light'][contains(.,'Acessar')]
Então ele deve ser direcionado para a tela Home
    Wait Until Element Is Visible    locator=//span[@class='text-xs whitespace-nowrap max-w-[200px] overflow-hidden text-ellipsis'][contains(.,'Administrador')]