#Author: Leison David Perilla
#Keywords Summary :
@issue:ADP-79 @MiCuenta
Feature: HU008 Descarga De Factura Movil
  
  YO como usuario de mi cuenta Tigo 
  QUIERO realizar la descarga de mi factura móvil
  PARA conocer el detalle de los consumos

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

  #Se comenta este escenario ya que la opción de Menú Resumen fue eliminada
  #Scenario: Mi Cuenta - Descarga de factura en menú resumen
  #And doy clic en "Seleccion MSISDN" si es visible
  #And Espero 2 segundos
  #And doy clic en "No Linea Hibrido" si es visible
  #And Espero 1 segundos
  #And doy clic en "Seleccion MSISDN" si es visible
  #And Espero 2 segundos
  #And doy clic en "Linea Hibrido" si es visible
  #And doy clic en "Resumen" si es visible
  #And guardo el texto de "Referencia de pago" como "txt referencia de pago"
  #And concateno "txt referencia de pago" con ".pdf" y se guarda en "txt referencia de pago"
  #And doy clic en "Ultima Factura Pdf"
  #And Espero 15 segundos
  #When abro en el navegador el archivo "txt referencia de pago"
  #And cerrar pestaña
  
  Scenario: Mi Cuenta - Descarga de factura en menú facturación
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea arma tu Plan" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea arma tu Plan" si es visible
    And doy clic en "Facturacion" si es visible
    And guardo el texto de "Referencia de pago" como "txt referencia de pago"
    And concateno "txt referencia de pago" con ".pdf" y se guarda en "txt referencia de pago"
    And doy clic en "Ultima Factura Pdf"
    And Espero 15 segundos
    When abro en el navegador el archivo "txt referencia de pago"
    And cerrar pestaña
