***Settings***
Library           SikuliLibrary     mode=NEW




*** Variable ***
${imagenes}=    ./Sikuly_img



*** Test Case ***
TC_001 Start Browser on Windows
    Start Sikuli Process
    Add Image Path     ${imagenes}
    Click       windows.png

