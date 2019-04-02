#Author: Johann Romero Vargas
#Keywords Summary :
@issue:ADP-177 @Recargas
Feature: HU032 Pago de recargas fallidas
  
  Como Tigoune
  Quiero realizar pruebas de automatización para comprobar el mensaje de recarga fallida
  Para garantizar que los usurios no reciban lo que no compran

  Background: Ingresar datos de recarga
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/user"
    And ingreso "automatizacion" en el campo "user dupal transacciones"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "pass dupal transacciones"
    And doy clic en "ok"
    And Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And ingreso "msisdn Sin Deuda" en el campo "Ingresa tu línea Tigo"
    And doy clic en "3mil"
    And ingreso "pruebas@prueba.com" en el campo "Correo electrónico"
    And doy clic en "recargar"
    Then llevará al formulario con el objeto "Titulo facturas moviles"

  Scenario: Recargas - Pago PSE de recarga fallida
    Given doy clic en "debito bancario pse"
    Then selecciono "BANCO UNION COLOMBIANO" en el campo "Banco"
    And selecciono "N" en el campo "Tipo de Persona"
    And ingreso "Nombres Apellidos" en el campo "Nombres y Apellidos"
    And ingreso "msisdn Sin Deuda" en el campo "Número de telefono"
    And ingreso "1234567896" en el campo "Número de documento D"
    And doy clic en "Titulo facturas moviles"
    And doy clic en "Pago PSE"
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
    Then selecciono "FAILED" en el campo "Transaction state"
    And doy clic en "Call"
    And doy clic en "Return"
    And llevará al formulario con el objeto "titulo detalles"
    And el campo "Mensaje cancelado" tiene el texto "Transacción cancelada"

  Scenario: Recargas - Pago PSE de recarga pendiente
    Given doy clic en "debito bancario pse"
    Then selecciono "BANCO UNION COLOMBIANO" en el campo "Banco"
    And selecciono "N" en el campo "Tipo de Persona"
    And ingreso "Nombres Apellidos" en el campo "Nombres y Apellidos"
    And ingreso "msisdn Sin Deuda" en el campo "Número de telefono"
    And ingreso "1234567896" en el campo "Número de documento D"
    And doy clic en "Titulo facturas moviles"
    And doy clic en "Pago PSE"
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
    Then selecciono "PENDING" en el campo "Transaction state"
    And doy clic en "Call"
    And doy clic en "Return"
    And llevará al formulario con el objeto "titulo detalles"
    And Espero 10 segundos
    And el campo "Mensaje transaccion" tiene el texto "En el momento, tu pago se encuentra pendiente de aprobación por parte de tu banco"
