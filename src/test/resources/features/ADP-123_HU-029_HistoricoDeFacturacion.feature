#Author: Henry Andres Correa Correa
#Keywords Summary :
@issue:ADP-123 @MiCuenta
Feature: HU029 Historico de facturación servicios fijos
  YO como usuario de mi cuenta Tigo 
  QUIERO ingresar a mis facturas
  PARA Para descargar el histórico de facturas en PDF

  Background: Borrar Datos de Navegacion y Autenticarse
    Given se borran cookies del navegador
    And Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Ingresar"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo Mi Cuenta"
    And doy clic en "Validar Mi Cuenta"
    And doy clic en "Continuar con Gmail"
    And doy clic en "Siguiente Gmail correo"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena Gmail"
    And doy clic en "Siguiente Gmail pass"
    And Espero 1 segundos

  Scenario: Mi Cuenta - Descarga de historico de factura existosa
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Fija" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija" si es visible
    And doy clic en "Facturacion" si es visible
    And llevará al formulario con el objeto "Historico Ultima Factura Pdf"
    And Presiono la tecla "Avanzar Página"
    And doy clic en "Historico Ultima Factura Pdf"
    And Espero 15 segundos
    And guardo el texto de "Numero de contrato" como "txt nombre de la factura pdf"
    And concateno "txt nombre de la factura pdf" con "." y se guarda en "txt nombre de la factura pdf"
    And guardo el texto de "Referencia de Pago" como "txt Referencia de pago"
    And concateno "txt nombre de la factura pdf" con "txt Referencia de pago" y se guarda en "txt nombre de la factura pdf"
    And concateno "txt nombre de la factura pdf" con ".pdf" y se guarda en "txt nombre de la factura pdf"
    When abro en el navegador el archivo "txt nombre de la factura pdf"
    And cerrar pestaña
