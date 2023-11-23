*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup     Iniciar o sistema 


*** Test Cases ***
Cenário 01-Logout com sucesso
    Logar no sistema SmartPOS
    No campo input E-mail adicionar o e-mail valido
    No campo input senha digitar uma senha valida
    Clique no botão entrar
    Ir para a tela Home
    Clique no botao de logout
    Clique em sim  