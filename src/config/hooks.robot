*** Settings ***

Resource    ../config/main.resource




*** Keywords ***
    
Executar sistema SmartPdv
    Open Application             D://Netpos//SmartPdv//SmartPdv.exe
    

Iniciar o sistema
    Carregar imagens do sistema
    Executar sistema SmartPdv

Fechar o sistema
    Teste fechar plano
    Deslogar com menu hamburger minimizado