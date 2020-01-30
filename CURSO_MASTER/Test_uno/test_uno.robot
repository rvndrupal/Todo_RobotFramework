*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot

# robot -d results  .\test_uno.robot

*** Variable ***
${url}    https://thetestingworld.com/index.php?option=com_users&view=registration&Itemid=588


*** Test Case ***
TC001 Caso uno
    recursos.Abrir navegador   ${url}    chrome
    recursos.Maximizar
    Texto       (//input[@type='text'])[1]  Rodrigo
    recursos.Dormir  2
    Limpiar Texto  (//input[@type='text'])[1]
    Texto       (//input[@type='text'])[1]  Rodrigo Igor
    Click    //a[contains(.,'Quick Demo')]


    
    recursos.Dormir  3
    recursos.Cerrar