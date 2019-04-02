#Author: Jose David Moreno
#Keywords Summary : campos, tarjeta, credito, validacion, tokenizacion
#Encoding: utf-8
#Language: es
@issue:ADP-153 @Pasarela
Feature: HU014 Tokenizacion de TC
  Como Cliente de Tigoune
  Quiero tokenizar mi tarjeta de credito 
  Para facilitar futuros pagos con este medio

  Background: seleccion medio de pago
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "movil_msisdnconfacturas" en el campo "Tu línea Tigo"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo electrónico M"
    And doy clic en "Consultar M clic"
    Then llevará al formulario con el objeto "title-detail"

  Scenario: Pasarela - Tokenizacion Tajeta de credito
    Given Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    And ingreso "4111111111111111" en el campo "Número de tarjeta"
    And ingreso "777" en el campo "CVV"
    And selecciono "nextMM()" en el campo "MM"
    And selecciono "nextYYYY()" en el campo "AA"
    And ingreso "APPROVED" en el campo "Nombre"
    And selecciono "CC" en el campo "tipo cc"
    And ingreso "8301149210" en el campo "número de documento TC"
    And ingreso "3004186619" en el campo "celular comprador"
    Then el campo "Pagar TC" tiene el atributo "diseable" en el valor ""
    And doy clic en "Pagar TC"
    And llevará al formulario con el objeto "Mensaje Tokenizacion"
    And doy clic en "Tokenizar"

  Scenario: Pasarela - Verificacion de Tarjeta Tokenizada con correo
    Given doy clic en "Regresar"
    And doy clic en "Movil"
    And ingreso "msisdncondeuda" en el campo "Tu línea Tigo"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo electrónico M"
    And doy clic en "Consultar M clic"
    And llevará al formulario con el objeto "title-detail"
    And Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    Then doy clic en "Pago Con Token"

  Scenario: Pasarela - Verificacion con correo diferente
    Given doy clic en "Regresar"
    And doy clic en "Movil"
    And ingreso "msisdncondeuda" en el campo "Tu línea Tigo"
    And ingreso "pruebaspaquetes@gmail.com" en el campo "Correo electrónico M"
    And doy clic en "Consultar M clic"
    And llevará al formulario con el objeto "title-detail"
    And Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    Then doy clic en "Número de Tarjeta"
 #Scenario: Pasarela - Eliminar Tarjeta de Credito Tokenizada
    #Given Estoy en la página de selección de formas de pago con el tipo "Tarjeta de Crédito" seleccionado
    #And doy clic en "Boton Eliminar TC"
#	  And llevará al formulario con el objeto "SMS con OTP"	
		#And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
#	  And obtener el otp del correo "automatizacionmicuenta@gmail.com" y la contraseña "Clave guardada con seguridad" y guardarlo en "codVer"
    #And cerrar pestaña
    #And ingreso "codVer" en el campo "Codigo OTP eliminacion"
    #And doy clic en "Continuar Eliminacion TC"
    #Then  llevará al formulario con el objeto "Tarjeta De Credito" 
