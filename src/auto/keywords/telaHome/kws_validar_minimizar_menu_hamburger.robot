*** Settings ***
Resource        ../../../../src/config/main.resource


*** Keywords ***
Clico no menu Hamburger
    Ir para a tela Home
    Wait Until Screen Contain            ${option_telaHome.inc_menu_hamburger}                ${TIMEOUT.DEFAULT}
    Click                                ${option_telaHome.inc_menu_hamburger}
    Screen Should Contain                ${option_telaHome.menu_hamburger_minimizado}  
    Capture Screen
    