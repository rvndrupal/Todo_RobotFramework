***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Library     DateTime
Resource    recursos.robot
Resource    casos.robot
Library     FakerLibrary
Library           AllureReportLibrary      //var//lib//Allure



#robot -d resultados -i tg01  test.robot
#robot -d resultados  test.robot
#Vinr770919hdfltd00
#robot -d resultados  tes*.robot
#pabot --processes 20 --outputdir resultados_uno  TEST/test*.robot
#robot -d results  -i tg01 -L debug test.robot

#robot --listener AllureReportLibrary.AllureListener;C:\\tmp\AllureLog\ C:\tmp\\RobotScripts


***Variables***
${url}          https://www.mercadolibre.com.mx/?matt_tool=6523024&matt_word=mercado_libre&gclid=CjwKCAiA98TxBRBtEiwAVRLqu8QewGLNzp7RViAdiMmBn2nCKqHjhIv7LtOOWzz2lv5gFCSkBMkowRoCOeMQAvD_BwE
${navegador}    chrome
${tiempo}   .1
${dir}      Tramites
${dir2}      Aviso


${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf

      
${key}      C:\\ClavePrivada.key
${Cer}      C:\\vinr770919lc8.cer

*** Keywords ***


*** Test Cases ***
CC001 DEMO RETURN
    [Documentation]    PRUEBA TRAMITE RETURN 
    [Tags]      tg01   
    Esperar Iniciar ok    15  
    Abrir navegador   ${url}    Chrome
    recursos.Maximizar
    recursos.Texto  //input[contains(@type,'text')]  maquina de beisbol
    recursos.Dormir  3
    recursos.Click  //div[@role='img']
    recursos.Dormir  2
    recursos.Click  (//span[contains(@class,'main-title')])[2]
    recursos.Dormir  2
    ${resultado} =      Validar ret  Se encontro maquina de bateo
    Log  ${resultado}

    
    Cerrar

