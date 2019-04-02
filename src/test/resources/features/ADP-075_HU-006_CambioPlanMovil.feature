#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-75 @MiCuenta
Feature: HU006 Cambio De Plan Menu Servicios y Compras.
  
  Yo como usuario de mi cuenta Tigo 
  Quiero ingresar al menú servicios y compras
  Para realizar el cambio de plan.

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

  Scenario: Mi Cuenta - Cambiar Mi Plan en Servicios de línea móvil con plan 5.1
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido" si es visible
    And doy clic en "Servicios Movil" si es visible
    And doy clic en "Cambiar Mi Plan"
    Then lo llevará a la página "https://compras.tigo.com.co/movil/pospago"

  Scenario: Mi Cuenta - Cambiar Mi Plan en Servicios de línea móvil prepago
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Prepago" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Prepago" si es visible
    And doy clic en "Servicios Movil" si es visible
    Then el campo "Cambiar Mi Plan" no existe

  Scenario: Mi Cuenta - Cambiar Mi Plan en Compras de línea móvil con plan 5.1
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Hibrido" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Hibrido" si es visible
    And doy clic en "Compras" si es visible
    Then el campo "Mejorar Plan" tiene el texto "Mejorar Plan"
    And el campo "Detalle Plan" tiene el texto "Tenemos el plan perfecto para ti. Activalo en nuestro chat en línea."
    
   #Se comenta este escenario porque la lineas Prepago no se han actualizado
    #Scenario: Mi Cuenta - Cambiar Mi Plan en Compras de línea móvil con prepago
    #And doy clic en "Seleccion MSISDN" si es visible
    #And Espero 2 segundos
    #And doy clic en "No Linea Prepago" si es visible
    #And Espero 1 segundos
    #And doy clic en "Seleccion MSISDN" si es visible
    #And Espero 2 segundos
    #And doy clic en "Linea Prepago" si es visible
    #And doy clic en "Compras" si es visible
    #Then el campo "Mejorar Plan" tiene el texto "Mejorar Plan"
    #And el campo "Detalle Plan" tiene el texto "Tenemos el plan perfecto para ti. Activalo en nuestro chat en línea."
