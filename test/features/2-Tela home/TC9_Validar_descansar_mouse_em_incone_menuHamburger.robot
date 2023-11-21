*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup     Iniciar o sistema 


*** Test Cases ***
Cenário 01 - Validar descansar o mouse em um dos icones do menu hamburger minimizado
    Logar no sistema SmartPOS
    No campo input E-mail adicionar o e-mail valido
    No campo input senha digitar uma senha valida
    Clique no botão entrar
    Verifico o menu Hamburger da tela home
    Clico no menu Hamburger
    Descanso o mouse em cima de um dos ícones