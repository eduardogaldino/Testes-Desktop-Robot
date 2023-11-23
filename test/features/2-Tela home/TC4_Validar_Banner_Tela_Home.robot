*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup     Iniciar o sistema 
Suite Teardown  Fechar o sistema 

*** Test Cases ***
Cenário 01 - Validar Banner da Tela Home
    Logar no sistema smartPOS
    No campo input E-mail adicionar o e-mail valido
    No campo input senha digitar uma senha valida
    Clique no botão entrar
    Verifico o banner da tela home

    