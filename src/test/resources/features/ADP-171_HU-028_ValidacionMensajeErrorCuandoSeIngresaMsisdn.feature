#Author: Herman Alarcon
#Keywords Summary : Validacion Documento
@issue:ADP-171 @Recargas
Feature: HU028 ValidarMensajedeErrorMSISDN
  Como Tigoune
  Quiero realizar pruebas automatizadas de consulta mensaje de error MSISDN
  Para garantizar que se pueden no se ingrese un valor diferente a MSISDN de tigo

  Background: Borrar Datos de Navegacion
    And se borran cookies del navegador

  Scenario Outline: Recargas -Ingreso número invalido con 9 digitos
    Given Estoy en la página de inicio "Paquetes y recargas" en la url "https://transacciones.tigo.com.co/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Ingresa tu línea Tigo"
    When ingreso <msisdn> en el campo "Ingresa tu línea Tigo"
    And Espero 1 segundos
    And doy clic en "Recarga"
    And doy clic en "10mil"
    And doy clic en "Correo Electronico"
    And ingreso <Correo> en el campo "Correo Electronico"
    And el campo "Número Ingresado" tiene el texto <mensaje>
    And el campo "Número Ingresado" tiene el atributo "color" en el valor "rojo"
    Then el campo "Recargar" tiene el atributo "class" en el valor "inactive"

    Examples: 
      | mensaje                             | msisdn      | Correo              |
      | "El número ingresado es incorrecto" | "300325545" | "prueba@prueba.com" |

  Scenario Outline: Recargas - Ingreso número que no es línea Tigo
    Given Estoy en la página de inicio "Paquetes y recargas" en la url "https://transacciones.tigo.com.co/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Ingresa tu línea Tigo"
    When ingreso <msisdn> en el campo "Ingresa tu línea Tigo"
    And doy clic en "Correo Electronico"
    And ingreso <Correo> en el campo "Correo Electronico"
    When doy clic en "Recargar"
    Then el campo "Mensaje MSISDN" tiene el texto <mensajemsisdn>
    And el campo "Mensaje MSISDN" tiene el atributo "color" en el valor "blanco"
    And el campo "Mensaje MSISDN" tiene el atributo "background-color" en el valor "rojo"

    Examples: 
      | mensaje                             | msisdn       | Correo              | mensajemsisdn                                                           |
      | "El número ingresado es incorrecto" | "3113215545" | "prueba@prueba.com" | "El número de línea que ingresaste no es de Tigo. Por favor verifícalo" |

  Scenario Outline: Recargas - Ingreso letras en línea Tigo
    Given Estoy en la página de inicio "Paquetes y recargas" en la url "https://transacciones.tigo.com.co/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Ingresa tu línea Tigo"
    When ingreso <letras> en el campo "Ingresa tu línea Tigo"
    And doy clic en "Recarga"
    Then el campo "Número Ingresado" tiene el texto <mensaje>
     And el campo "Número Ingresado" tiene el atributo "color" en el valor "rojo"

    Examples: 
      | mensaje                             | letras |
      | "El número ingresado es incorrecto" | "ABC"  |

  Scenario Outline: Recargas - Ingreso MSISDN que no empieza por 3 ni por 5
    Given Estoy en la página de inicio "Paquetes y recargas" en la url "https://transacciones.tigo.com.co/servicios/paquetes"
    When doy clic en "Recarga"
    And doy clic en "Ingresa tu línea Tigo"
    When ingreso <msisdn> en el campo "Ingresa tu línea Tigo"
    Then el campo "Número Ingresado" tiene el texto <mensaje>
    And el campo "Número Ingresado" tiene el atributo "color" en el valor "rojo"

    Examples: 
      | mensaje                             | msisdn       |
      | "El número ingresado es incorrecto" | "9003255451" |
      | "El número ingresado es incorrecto" | "1003255451" |
