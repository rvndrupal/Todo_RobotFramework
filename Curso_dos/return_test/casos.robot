***Settings***
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     BuiltIn


***Variables****
${curp}
${rfc}
${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf


***Keywords***  

Datos Domicilio Fiscal
    Texto  (//input[contains(@formcontrolname,'codigoPostal')])[1]  53200
    Scroll  0   1400
    Texto   (//input[@formcontrolname='calle'])[1]       Juarez
    Texto  (//input[@formcontrolname='numExterior'])[1]      60
    Texto  (//input[@placeholder='Número interior'])[1]     03
    Resultado  .5  ${dir}/Datos_fiscales.png  Datos fiscales OK
    Scroll  0  1700

Domicilio de la Planta
    Scroll  0  1800
    Texto  (//input[@placeholder='Código Postal'])[2]  52300
    Click   (//select[contains(@formcontrolname,'colonia')])[2]
    Dormir      .2
    Click   //option[contains(text(),'San Isidro')]
    Texto  (//input[@placeholder='Calle'])[2]  Pinos
    Texto  (//input[@formcontrolname='numExterior'])[2]  45
    Texto  (//input[@formcontrolname='numInterior'])[2]  44
    Click  (//button[contains(@class,'btn btn-primary')])[3]
    Resultado  .5  ${dir}/Domicilio_planta.png  Domicilio planta OK


Domicilio del Almacen
    Scroll  0    2100
    Dormir  .4
    Texto  (//input[@placeholder='Código Postal'])[3]  53200
    Texto  (//input[@placeholder='Calle'])[3]  Juarez
    Texto    (//input[@placeholder='Número exterior'])[3]   12
    Texto  (//input[@placeholder='Número interior'])[3]  43 
    Click  (//button[@class='btn btn-primary'])[5]
    Resultado  .3  ${dir}/Domicilio_almacen.png  Domicilio Almacen OK


Datos del Representante Legal
    [Arguments]     ${arg1}
    ${curp} =  Aleatorio Curp
    Scroll  0  2250
    Texto  (//input[contains(@placeholder,'Clave Única de Registro de Población')])[2]  ${curp}
    Texto  (//input[@placeholder='Registro Federal de Contribuyentes'])[2]  ${arg1}
    Dormir      2
    Texto  (//input[@placeholder='Registro Federal de Contribuyentes'])[2]  ${arg1}
    Dormir      2
    Texto  (//input[contains(@type,'text')])[32]  Maribel
    Texto   (//input[@maxlength='50'])[7]   Chavez
    Texto  (//input[contains(@maxlength,'50')])[8]  Garcia
    Texto   (//input[@placeholder='Lada'])[2]   044
    Texto  (//input[contains(@type,'text')])[36]  558987987
    Texto    (//input[contains(@placeholder,'ejemplo@dominio.com')])[3]     Maribel@gmail.com
    Resultado  .3   ${dir}/Datos_legal.png    Datos Representante Legal OK


Clave del medico veterinario
    Scroll  0  2300
    Texto  (//input[@type='text'])[38]  MR-0119-09-001-10
    Click  (//button[@class='btn btn-primary'])[7]
    Resultado  .3  ${dir}/Clave_medico.png  Clave medico OK
    

Manipulate current time
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${datetime} =	Convert Date  ${CurrentDate}  datetime
    Log  ${datetime.year}	
    Log	 ${datetime.month}
    Log	 ${datetime.day}	
    Log	 ${datetime.hour}
    Log	 ${datetime.minute}
    Log	 ${datetime.second}
    Log	 ${datetime.microsecond}


    


Login
    [Arguments]     ${arg1}     ${arg2}
     #Video Iniciar 
    Esperar Iniciar ok    5
    Dormir Todos  ${tiempo}
    Abrir navegador  ${arg1}   ${arg2}  
    Maximizar 
    Scroll  0  200
    Resultado  .5  ${dir}/Login.png  Pantalla Login Ok
    Texto   //input[contains(@id,'username')]    daniel.badillo
    Texto   //input[contains(@id,'password')]    test123$ 
    Resultado  .5  ${dir}/Login_password.png   Se introducen los datos para el Login
    Click  (//button[@type='button'])[3]
    Dormir  1
    Scroll  0  500

Tramite
    Resultado  .3  ${dir}/Carga_resultados.png   Carga los resultados
    Click  (//a[@href='#'])[1]
    Click  //a[@routerlink='/registraSolicitudTramite/18A/1/init'][contains(.,'Trámite 18A')]
    Scroll  0  500
    Resultado  .2  ${dir}/Datos_personales.png  Datos Personales Ok  
    Click  //select[@formcontrolname='tipoPersona']

Datos Personales
    [Arguments]     ${claverfc}
    ${curp} =  Aleatorio Curp
    Click  //*[@id="Formulario"]/form/div[3]/div[1]/select/option[2]
    Texto  (//input[contains(@formcontrolname,'curp')])[1]     ${curp}   
    Scroll  0  400
    Dormir  .2
    Texto  //input[@formcontrolname='rfc']          ${claverfc}
    Dormir   2
    Texto  //input[@formcontrolname='rfc']          ${claverfc}
    Dormir  3
    Texto  (//input[@type='text'])[3]    YENNYELY NICOLE
    Dormir  .2
    Texto  //input[@formcontrolname='primerApellido']   MONTENEGRO
    Dormir   .2
    Texto  (//input[contains(@formcontrolname,'segundoApellido')])[1]   GARCIA
    Dormir   .2
    Texto  (//input[contains(@formcontrolname,'lada')])[1]   777
    Dormir   .2
    Texto  (//input[contains(@placeholder,'Teléfono fijo')])[1]   7774567864
    Dormir   .2
    Texto  (//input[contains(@maxlength,'4')])[1]   245
    Dormir   .2
    Texto  (//input[contains(@type,'text')])[9]   345
    Dormir   .2
    Texto  (//input[contains(@formcontrolname,'correoElectronico')])[1]   rodrigodrupal1@gmail.com
    Dormir   .2
    Texto  //input[contains(@formcontrolname,'correoElectronicoAl')]   rodrigodrupal5@gmail.com
    Resultado  1  ${dir}/Personales.png  Datos Personales Ok
    Scroll  0  1000

Actividad Economica
    Click  //select[@formcontrolname='actividadServicio']
    Click  //option[contains(text(),'ELABORADOR POR MAQUILA')]
    Click  //select[contains(@formcontrolname,'materiaProducto')]
    Click   //option[contains(text(),'SALES PURAS ANTIMICROBIANAS')]
    Click   //select[contains(@ng-reflect-name,'funcion')]
    Click   //option[contains(text(),'ALMACENAR')]
    Dormir  1
    Click   //option[contains(text(),'ALMACENAR')]
    Click   (//button[@class='btn btn-primary'][contains(.,'Agregar')])[1]
    Scroll  0  1200
    Resultado  .3  ${dir}/Actividad_económica.png  Actividad OK

Documentos Anexos
    Scroll  0  2500
    Examinar    (//input[contains(@type,'file')])[1]     ${pdf1}
    Examinar    (//input[contains(@type,'file')])[2]     ${pdf2}
    Click  //input[contains(@id,'check')]
    Scroll  0  2700
    Click  (//button[@class='btn btn-primary'])[8]
    Dormir  2
    Scroll  0  2800
    Dormir    2
    Resultado  .4  ${dir}/Archivos.png  Archivos pdf OK
    Click  /html/body/div[2]/div/div[3]/button[1]
    #(//button[contains(@type,'button')])[15]
    Dormir  2
    Scroll  0  300
    Resultado  .2  ${dir}/Firma_electronica.png  Firma Electronica OK


Sin Firma
    Click  (//button[contains(@type,'button')])[3]
    Dormir  8
    Resultado  1  ${dir}/Encuesta_satisfaccion.png  Encuesta de Satisfacción OK
    Click    //*[@id="radEncGood"]
    Click   (//input[@type='radio'])[2]
    Texto   //input[contains(@id,'email')]   rodrigodrupal1@gmail.com
    Click   (//button[contains(@type,'button')])[4]
    Resultado  .5  ${dir}/Encuesta_ok.png  Encuesta OK
    Scroll  0  350
    Dormir  2  
    Resultado  .4  ${dir}/Mensaje_final.png  Mensaje final OK
    Click   //a[@class='btn btn-default'][contains(.,'Descargar documento PDF')]
    Resultado  .3  ${dir}/Fin.png  Final sin firma OK

Con firma
    Scroll  0  350
    Click  (//button[@class='btn btn-primary'])[1]
    Dormir  2
    Examinar   (//input[contains(@type,'file')])[1]   ${Cer}
    Examinar    (//input[contains(@type,'file')])[2]   ${key}
    Texto  //input[@id='contrasena']   roei453err
    Resultado    .4     ${dir}/Calves_key.png   Cargando las claves OK
    Click  //button[contains(@class,'btn btn-primary ')]
    Dormir    3
    Resultado  .3  ${dir}/Clave_key.png  Con Firma ok
    Dormir  2
    Click   /html/body/div[2]/div/div[3]/button[2]
    Scroll  0  350
    Click  //a[@class='btn btn-default'][contains(.,'Descargar documento PDF')]
    Resultado  .3  ${dir}/Final_con_key.png  Final con Firma OK