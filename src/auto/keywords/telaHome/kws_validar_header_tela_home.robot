*** Settings ***
Resource        ../../../../src/config/main.resource



*** Keywords ***
Logar no sistema smartPOS
    Estar na tela de Login
No campo input E-mail adicionar o e-mail valido
    No campo input email, digite um email válido
No campo input senha digitar uma senha valida
    No campo inpuit senha, digite uma senha válida
Clique no botão entrar
    Clique no botao Entrar
Verifico o header da tela home
    Ir para a tela Home
    Wait Until Screen Contain            ${option_telaHome.headerHome}          ${TIMEOUT.DEFAULT}
    Screen Should Contain                ${option_telaHome.headerHome}
    Capture Screen    