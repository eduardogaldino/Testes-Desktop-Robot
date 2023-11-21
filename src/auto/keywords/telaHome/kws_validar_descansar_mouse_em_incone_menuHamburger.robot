*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Descanso o mouse em cima de um dos ícones
   Wait Until Screen Contain            ${option_telaHome.menu_hamburger_minimizado}                ${TIMEOUT.DEFAULT}
   Wait Until Screen Contain            ${option_telaHome.inc_pdv_menu_hamburger}                   ${TIMEOUT.DEFAULT}
   Mouse Move                           ${option_telaHome.inc_pdv_menu_hamburger}
   Screen Should Contain                ${option_telaHome.Descanso_mouse_incone_pdv}
   Capture Screen 