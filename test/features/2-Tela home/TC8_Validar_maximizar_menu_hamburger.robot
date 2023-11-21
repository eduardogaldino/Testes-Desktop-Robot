*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup     Iniciar o sistema 


*** Test Cases ***
Cenário 01 - Validar maximizar o menu hamburger
    Logar no sistema SmartPOS
    No campo input E-mail adicionar o e-mail valido
    No campo input senha digitar uma senha valida
    Clique no botão entrar
    Verifico o menu Hamburger da tela home
    Clico no menu hamburger maximizado
    Clico no menu Hamburger minimizado