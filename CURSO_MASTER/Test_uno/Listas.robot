*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections

# robot -d results  .\test_uno.robot

*** Variable ***
${url}    https://thetestingworld.com/index.php?option=com_users&view=registration&Itemid=588


*** Test Case ***
TC001 Caso uno
    @{lista1}       Create List     Rodrigo    Juan     Carlos      Pedro
    ${lista_count}=     Get Length   ${lista1}
    Print  ${lista_count}
    ${lista_dato1} =  Get From List   ${lista1}     1
    Print   ${lista_dato1}
    

TC002 LOOPS ROBOT   
    :FOR  ${i}  IN RANGE  1     10
    \   Print   Numero: ${i}

For-Loop-Elements
    @{ITEMS}    Create List    Star Trek    Star Wars    Perry Rhodan
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    \    Log    ${ELEMENT}
