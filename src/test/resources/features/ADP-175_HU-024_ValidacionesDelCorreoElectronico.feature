#Author:Nelson Mesa
#Keywords Summary
@issue:ADP-175 @Recargas
Feature: HU024 validaciones del correo electronico
  
  Como usuario Tigoune
  Quiero validar correo electronicos
  Para garantizar que funcione correctamente el inicio del proceso de recarga

  Background: Autenticarse en CMS
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/user"
    And ingreso "automatizacion" en el campo "user dupal transacciones"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "pass dupal transacciones"
    And doy clic en "ok"

  Scenario: Recargas - Validación del correo electronico exitosa
    Given Estoy en la página de inicio "Pagina Paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And ingreso "msisdn sin deuda" en el campo "Ingresa tu línea Tigo"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico"
    And doy clic en "3Mil"
    And doy clic en "recargar"
    Then llevará al formulario con el objeto "Titulo facturas móviles"

  Scenario: Recargas - Error en Validación del correo electronico
    Given Estoy en la página de inicio "Pagina Paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And ingreso "msisdn sin deuda" en el campo "Ingresa tu línea Tigo"
    And ingreso "prueba" en el campo "Correo electrónico"
    And doy clic en "3Mil"
    And doy clic en "recargar"
    Then el campo "Mensaje Error Recarga1" tiene el atributo "color" en el valor "rojo"
