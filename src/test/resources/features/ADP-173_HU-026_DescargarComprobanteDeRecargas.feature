#Author: Melissa Pineda - Johann Romero
#Keywords Summary :
@issue:ADP-173 @Recargas
Feature: HU026 Descargar comprobante de recargas
  
  Como Tigoune
  Quiero realizar pruebas automatizar la descarga del comprobante de pago exitoso de pago de paquete 
  Para garantizar que los usuarios puedan tener los documentos legales de la compra

  Background: Autenticarse en CMS
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/user"
    And ingreso "automatizacion" en el campo "user dupal transacciones"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "pass dupal transacciones"
    And doy clic en "ok"

  Scenario: Recargas - Descargar comprobante de recargas
    Given Estoy en la página de inicio "Pagina paquetes" en la url "https://transaccionesco-uat.tigocloud.net/servicios/paquetes"
    When doy clic en "Recarga"
    And ingreso "MSISDN Sin Deuda" en el campo "Ingresa tu línea Tigo"
    And doy clic en "3mil"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico"
    And doy clic en "Recargar"
    And llevará al formulario con el objeto "Titulo facturas moviles"
    And doy clic en "tarjeta de credito"
    And ingreso "4111111111111111" en el campo "Número de tarjeta"
    And ingreso "777" en el campo "CVV"
    And selecciono "nextmm()" en el campo "MM"
    And doy clic en "AA"
    And doy clic en "2022"
    And ingreso "nombre" en el campo "Nombre"
    And ingreso "123456789" en el campo "número de documento TC"
    And ingreso "3004035929" en el campo "celular comprador"
    And doy clic en "Autorizo esta tarjeta para futuros pagos"
    And doy clic en "pagartc"
    And Espero 30 segundos
    And llevará al formulario con el objeto "Titulo Detalles"
    And Espero 2 segundos
    And doy clic en "Descargar Comprobante"
    And Espero 15 segundos
    When abro en el navegador el archivo "comprobante_de_pago.pdf"
    And Espero 1 segundos
    And cerrar pestaña
