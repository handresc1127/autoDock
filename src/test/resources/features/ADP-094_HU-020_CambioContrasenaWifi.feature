#Author: Leison David Perilla Palacios
#Keywords Summary :
@issue:ADP-94 @MiCuenta
Feature: HU020 Cambio contraseña Wifi
  
    YO como usuario de mi cuenta Tigo 
    QUIERO ingresar a mi servicio de internet
    PARA Para realizar el cambio de la contraseña Wifi

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

  Scenario Outline: Mi Cuenta - Cambio contraseña wifi
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "No Linea Fija Wifi" si es visible
    And Espero 1 segundos
    And doy clic en "Seleccion MSISDN" si es visible
    And Espero 2 segundos
    And doy clic en "Linea Fija Wifi" si es visible
    And doy clic en "Servicios" si es visible
    And doy clic en "Producto Internet Detalles"
    And doy clic en "Cambiar Contrasena Wifi"
    And ingreso <Contrasena> en el campo "Nueva Contrasena Wifi"
    And doy clic en "Ok"
    Then el campo "Mensaje Confirmación" tiene el texto <Mensaje>

    Examples: 
      | Escenario                         | Contrasena    | Mensaje                                                                    |
      | "Caracteres especiales"           | "Prueba2019+}"| "La contraseña es inválida, revise que no contenga caracteres especiales." |
      | "Menos de 8 Caracteres"           | "1234567"     | "La contraseña es inválida, revise que tenga entre 8 y 13 caracteres."     |
      | "Contraseña exitosa Alfanumerica" | "Pruebas1234" | "El cambio de contraseña de la red de wifi fue exitoso."                   |
      | "Contraseña Exitosa"              | "1035422732"  | "El cambio de contraseña de la red de wifi fue exitoso."                   |
