*** Settings ***
Documentation    Dados padroes para automação
Resource        ../config/main.resource



*** Variables ***
${EMAIL}          eduardograciebarra@gmail.com
${SENHA}          teste123


*** Keywords ***
Teste fechar plano
    ${planosPrecos}    Run Keyword And Return Status    Wait Until Screen Contain    ${options_logout.tela_Planos}                ${TIMEOUT.DEFAULT}
    IF    ${planosPrecos} == $True
         Wait Until Screen Contain                                                   ${options_logout.btn_cancelar_tl_Planos}     ${TIMEOUT.DEFAULT}
         Click                                                                       ${options_logout.btn_cancelar_tl_Planos}
         Wait Until Screen Contain                                                   ${option_telaHome.telaHome}                  ${TIMEOUT.DEFAULT}
         Screen Should Contain                                                       ${option_telaHome.menuHamburger}
             
    END

Deslogar com menu hamburger minimizado
    ${menuHamburgerMinimizado}    Run Keyword And Return Status    Wait Until Screen Contain    ${option_telaHome.menu_hamburger_minimizado}                ${TIMEOUT.MINIMAL}
    IF    ${menuHamburgerMinimizado} == $True
         Wait Until Screen Contain                                                   ${options_logout.inc_logout_minimizado}                                ${TIMEOUT.MINIMAL}
         Click                                                                       ${options_logout.inc_logout_minimizado}
         Wait Until Screen Contain                                                   ${options_logout.tela_deseja_realizar_logout}                          ${TIMEOUT.MINIMAL}
         Click                                                                       ${options_logout.btn_sim}
         Wait Until Screen Contain                                                   ${option_telaLogin.telaLogin}                                          ${TIMEOUT.MINIMAL}
         Screen Should Contain                                                       ${option_telaLogin.telaLogin}
             
    END



   
