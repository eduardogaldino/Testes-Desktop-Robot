*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Verifico o banner da tela home
    Ir para a tela Home
    Wait Until Screen Contain            ${option_telaHome.banner}          ${TIMEOUT.DEFAULT}
    Screen Should Contain                ${option_telaHome.banner}
    Capture Screen