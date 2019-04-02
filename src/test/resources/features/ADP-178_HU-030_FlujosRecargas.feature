#Author: Melissa Pineda
#Keywords Summary :
@issue:ADP-178 @Recargas
Feature: HU030 Pago de recargas exitosas
  
  Como Tigoune
  Quiero realizar pruebas de automatización para comprobar el mensaje de recarga exitosa
  Para garantizar que los usurios reciban lo que compran
  
  Background: Ingresar datos de recarga
  	Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
		When doy clic en "Recarga"
		And ingreso "msisdn Sin Deuda" en el campo "Ingresa tu línea Tigo"
		And doy clic en "3mil"
		And ingreso "pruebas@prueba.com" en el campo "Correo electrónico"
		And doy clic en "recargar"
		Then llevará al formulario con el objeto "Titulo facturas moviles"

  Scenario: Recargas - Pago TC de recarga exitosa
		Given doy clic en "Tarjeta de Credito"
		Then ingreso "4111111111111111" en el campo "	Número de tarjeta"
		And ingreso "777" en el campo "CVV"
    And selecciono "nextmm()" en el campo "MM"
    And doy clic en "AA"
    And doy clic en "2022"
    And ingreso "Nombres Apellidos" en el campo "Nombre"
    And ingreso "123456789" en el campo "Número de documento TC"
    And ingreso "msisdn Sin Deuda" en el campo "Celular comprador"
    And doy clic en "Autorizo esta tarjeta para futuros pagos"
    And doy clic en "Pagartc"
   	And Espero 40 segundos
    And llevará al formulario con el objeto "Titulo detalles"
    And doy clic en "Continuar pago exitoso"
    And llevará al formulario con el objeto "Mensaje Exitoso"
    And el campo "Mensaje transaccion" tiene el texto "¡Tu recarga se ha realizado con éxito!"
    
    
   Scenario: Recargas - Pago PSE de recarga exitosa
		Given doy clic en "debitobancariopse"
		Then selecciono "BANCO UNION COLOMBIANO" en el campo "Banco"
		And selecciono "N" en el campo "Tipo de Persona"
		And ingreso "Nombres Apellidos" en el campo "Nombres y Apellidos"
		And ingreso "msisdn Sin Deuda" en el campo "Número de telefono"
		And ingreso "1234567896" en el campo "Número de documento D"
		And doy clic en "Titulo facturas moviles"
		And doy clic en "Pago pse"
		And llevará al formulario con el objeto "Email PSE"
		And ingreso "pruebas@yopmail.com" en el campo "Email PSE"
		And Presiono la tecla "Avanzar Página"
    And Presiono la tecla "Tab"
		And Espero 1 segundos
		And doy clic en "Ir al Banco" si es visible
		And llevará al formulario con el objeto "Debug"
    And Espero 1 segundos
    And doy clic en "Debug"
    And ingreso "Today()" en el campo "Bank Process Date"
    And ingreso "12365478" en el campo "Authorization ID"
    Then selecciono "OK" en el campo "Transaction state"
    And doy clic en "Call"
    And doy clic en "Return"
    And llevará al formulario con el objeto "titulo detalles"
    And doy clic en "Continuar pago exitoso"
    And llevará al formulario con el objeto "Mensaje exitoso"
    And el campo "Mensaje transaccion" tiene el texto "¡Tu recarga se ha realizado con éxito!"
    
