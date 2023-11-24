*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Clique no botao de logout
    Ir para a tela Home
    
    Wait Until Screen Contain                ${options_logout.inc_logout}                                ${TIMEOUT.DEFAULT}
    Click                                    ${options_logout.inc_logout} 
Clique em sim
    Wait Until Screen Contain                ${options_logout.tela_deseja_realizar_logout}               ${TIMEOUT.DEFAULT}
    Click                                    ${options_logout.btn_sim}
    Wait Until Screen Contain                ${option_telaLogin.telaLogin}                               ${TIMEOUT.DEFAULT}
    Screen Should Contain                    ${option_telaLogin.telaLogin}
    Capture Screen    