*** Settings ***
Library    SikuliLibrary
    

Variables    ../config/hooks.yaml

Resource    ../../src/config/hooks.robot
Resource    ../../src/auto/data/BaseImages.robot
Resource    ../../src/utils/Default.robot

#keywords
Resource    ../../src/auto/keywords/telaLogin/kws_loginSucesso.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_header_tela_home.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_menu_hamburger_tela_home.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_banner_tela_home.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_botao_AGORA_NAO_Tela_Home.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_botao_CONFIRA_tela_home.robot
Resource    ../../src/auto/keywords/telaHome/kws_Validar_minimizar_menu_hamburger.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_maximizar_menu_hamburger.robot
Resource    ../../src/auto/keywords/telaHome/kws_validar_descansar_mouse_em_incone_menuHamburger.robot
Resource    ../../src/auto/keywords/logout/kws_logoutSucesso.robot

#objects
Resource     ../../src/auto/objects/telaLogin_obj.resource
Resource     ../../src/auto/objects/telaHome_obj.resource 
Resource     ../../src/auto/objects/logout_obj.resource        