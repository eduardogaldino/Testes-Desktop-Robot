*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup     Iniciar o sistema   
Suite Teardown  Fechar o sistema 

*** Test Cases ***
Cenario 01 - Validar o menu Hamburger da Tela Home
    Logar no sistema smartPOS
    No campo input E-mail adicionar o e-mail valido
    No campo input senha digitar uma senha valida
    Clique no botão entrar
    Verifico o menu hamburger da tela home