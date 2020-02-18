*** Settings ***
Library            SikuliLibrary     mode=NEW   
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server




*** Variable ***
${imagenes}=    ./Sikuly_img



*** Test Case ***
TC_001 Start Browser on Windows
    
   
