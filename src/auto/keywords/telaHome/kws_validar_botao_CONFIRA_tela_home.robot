*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Clique no botão "CONFIRA" do banner
    Ir para a tela Home
    Wait Until Screen Contain           ${option_telaHome.btn_confira_banner}        ${TIMEOUT.DEFAULT}
    Click                               ${option_telaHome.btn_confira_banner}
    Wait Until Screen Contain           ${option_telaHome.planos_precos}             ${TIMEOUT.DEFAULT}
    Screen Should Contain               ${option_telaHome.planos_precos}
    Capture Screen  