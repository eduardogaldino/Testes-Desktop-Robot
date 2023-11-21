*** Settings ***
Resource        ../../../src/config/main.resource

Suite Setup    Iniciar o sistema

*** Test Cases ***

Cenário 1: Fazer um login de sucesso
    Estar na tela de Login
    No campo input email, digite um email válido
    No campo inpuit senha, digite uma senha válida
    Clique no botao Entrar
    Ir para a tela Home