#Author: Henry Andres Correa
#Keywords Summary :
@issue:ADP-51
Feature: Prueba de Adherencia Ecommerce

  #Scenario:  Pagina de arrastrar y soltar
  #Given Estoy en la página de inicio de pago de facturas "http://crossbrowsertesting.github.io/drag-and-drop.html"
  #When arrastro el elemento "draggable" hasta el elemento "dropable"
  #When Espero 3 segundos
  #Scenario:  pagina de llevar a la posicion
  #Given Estoy en la página de inicio de pago de facturas "http://crossbrowsertesting.github.io/drag-and-drop.html"
  #When arrastro el elemento "draggable" hasta la posición "100,100"
  #When Espero 3 segundos
  #Scenario:  Pagina del balon
  #Given Estoy en la página de inicio de pago de facturas "https://javascript.info/article/mouse-drag-and-drop/ball4/"
  #When arrastro el elemento "balón" hasta la posición "-75,-100"
  #When Espero 3 segundos
  #@Ecommerce
  #Scenario: Demostración de ecommerce
  #Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/activate?msisdn=3018927656&imsi=732111173644059"
  #When Espero 3 segundos
  #When llevará al formulario con el objeto "title page-title"
  #And ingreso "nhmesa@indracompany.com" en el campo "Correo electrónico M"
  #When arrastro el elemento "draggable" hasta la posición "400,0"
  #When Espero 2 segundos
  #Then llevará al formulario con el objeto "title page-title"
  #And el campo "title page-title" tiene el texto "Activa tu SIM en 1 paso"
  #@Seguridad
  #Scenario: Seguridad en contraseñas
    #Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://transaccionesco-uat.tigocloud.net/user"
    #And ingreso "automatizacion" en el campo "user dupal transacciones"
    #And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    #And ingreso "Clave guardada con seguridad" en el campo "pass dupal transacciones"
    #And establecer del objeto "pass dupal transacciones" el atributo "type" con el valor "text"
    #And Espero 4 segundos 
    #And doy clic en "ok"
    #And Espero 5 segundos

  @Ecommerce @CargaFoto @Debug
  Scenario: Carga de una foto ecommerce
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/activate?msisdn=3018927656&imsi=732111173644059"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo Electronico Plan SIM"
    When arrastro el elemento "draggable" hasta la posición "400,0"
    And doy clic en "Pospago 5.1"
    And doy clic en "Continuar Activar Plan SIM"
    And llevará al formulario con el objeto "title page-title"
    And doy clic en "Expedición"
    And doy clic en "Fecha Expedición"
    When Espero 1 segundos
    And doy clic en "Activar Plan SIM E"
    Then llevará al formulario con el objeto "title page-title"
    And doy clic en "Continuar Plan SIM"
    Then llevará al formulario con el objeto "paginafirmacontrato"
    And remuevo del objeto "Input foto" el atributo "hidden"
    And concateno "Current Path" con "\src\test\resources\data\Foto.jpg" y se guarda en "Ecommerce Foto a cargar"
    And Espero 15 segundos
    #And ingreso "Ecommerce Foto a cargar" en el campo "Input Foto"
    And establecer del objeto "Input foto" el atributo "type" con el valor "text"
    And ingreso "Ecommerce Foto a cargar" en el campo "Input Foto"
    And establecer del objeto "inputfoto" el atributo "type" con el valor "file"
    And Espero 15 segundos
