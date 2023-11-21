*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Estar na tela de Login
    Wait Until Screen Contain     ${option_telaLogin.telaLogin}              ${TIMEOUT.DEFAULT} 
    Screen Should Contain         ${option_telaLogin.telaLogin}
No campo input email, digite um email válido
    Wait Until Screen Contain     ${option_telaLogin.input_email}            ${TIMEOUT.DEFAULT}
    SikuliLibrary.Input Text      ${option_telaLogin.input_email}            ${EMAIL}
No campo inpuit senha, digite uma senha válida
    Wait Until Screen Contain     ${option_telaLogin.input_password}         ${TIMEOUT.DEFAULT}
    SikuliLibrary.Input Text      ${option_telaLogin.input_password}         ${SENHA}
Clique no botao Entrar
    Wait Until Screen Contain     ${option_telaLogin.btn_entrar}             ${TIMEOUT.DEFAULT}
    Click                         ${option_telaLogin.btn_entrar}    
Ir para a tela Home
    Wait Until Screen Contain     ${option_telaHome.telaHome}                ${TIMEOUT.DEFAULT}
    Screen Should Contain         ${option_telaHome.telaHome}  
    Capture Screen