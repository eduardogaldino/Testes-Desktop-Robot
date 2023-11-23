*** Settings ***

Resource    ../config/main.resource




*** Keywords ***
    
Executar sistema SmartPdv
    Open Application             D://Netpos//SmartPdv//SmartPdv.exe
    

Iniciar o sistema
    Carregar imagens do sistema
    Executar sistema SmartPdv

Fechar o sistema
    Capture Screen
    Clique no botao de logout
    Clique em sim