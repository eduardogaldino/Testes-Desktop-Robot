*** Settings ***
Resource     ../../config/main.resource


*** Variables ***
@{IMAGE_DIR}        
...            src//auto//images
...            src\\auto\\images\\login
...            src\\auto\\images\\home 

*** Keywords ***

Carregar imagens do sistema
    FOR    ${dir}    IN    @{IMAGE_DIR}
        Add Image Path     ${dir}
        
    END