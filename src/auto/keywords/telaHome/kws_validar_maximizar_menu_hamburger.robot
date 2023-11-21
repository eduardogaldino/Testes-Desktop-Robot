*** Settings ***
Resource        ../../../../src/config/main.resource


*** Keywords ***

Clico no menu hamburger maximizado
    Ir para a tela Home
    Wait Until Screen Contain            ${option_telaHome.menuHamburger}                           ${TIMEOUT.DEFAULT}
    Click                                ${option_telaHome.inc_menu_hamburger}
Clico no menu Hamburger minimizado
    Wait Until Screen Contain            ${option_telaHome.menu_hamburger_minimizado}                ${TIMEOUT.DEFAULT}
    #Wait Until Screen Contain            ${option_telaHome.inc_menu_hamburger}                       ${TIMEOUT.DEFAULT}
    Double Click                         ${option_telaHome.inc_menu_hamburger}                       #${option_telaHome.inc_menu_hamburger}
    Wait Until Screen Contain            ${option_telaHome.menuHamburger}                            ${TIMEOUT.DEFAULT}
    Screen Should Contain                ${option_telaHome.menuHamburger}
    Capture Screen
