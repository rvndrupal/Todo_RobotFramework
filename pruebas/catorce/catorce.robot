***Settings***
Documentation   Prueba uno Amazon
Library     String
Resource    ../recursos.robot

#robot -d result  catorce.robot

***Variables***
@{items}    7   8   9   10   11   12    13
${buscar}   xpath=(//span[contains(.,'Amazon México')])[3]
${tiempo}   .5
${url}         http://testautomationpractice.blogspot.com/
${url2}        https://www.google.com/
${navegador}    chrome


***Keywords***


*** Test Cases ***
001 Ventanas Multiples
    Abrir navegador
    Maximizar    

    Dormir Todos  .9
    Texto   (//input[@type='text'])[1]    demo de busqueda.
    Click   //input[@type='submit']
    Pantalla  

   
   
    Cerrar 


