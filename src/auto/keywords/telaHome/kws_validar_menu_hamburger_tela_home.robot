*** Settings ***
Resource        ../../../../src/config/main.resource


*** Keywords ***
Verifico o menu hamburger da tela home
    Ir para a tela Home
    Wait Until Screen Contain            ${option_telaHome.menuHamburger}          ${TIMEOUT.DEFAULT}
    Screen Should Contain                ${option_telaHome.menuHamburger}
    Capture Screen

