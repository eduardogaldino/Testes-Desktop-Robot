*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Clique no botão "AGORA NÂO" do banner
    Ir para a tela Home
    Wait Until Screen Contain           ${option_telaHome.btn_agoraNao_banner}        ${TIMEOUT.DEFAULT}
    Click                               ${option_telaHome.btn_agoraNao_banner}
    Screen Should Not Contain           ${option_telaHome.btn_agoraNao_banner}
    Capture Screen