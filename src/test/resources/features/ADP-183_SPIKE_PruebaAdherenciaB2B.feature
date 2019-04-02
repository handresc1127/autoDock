#Author: Henry Andres Correa Correa
#Keywords Summary :
@issue:ADP-183 @MiCuentaEmpresas
Feature: Prueba de ahderencia de mi cuenta empresas
  Como tigoUne
  Quiero verificar si es posible que el FW de automatización se adhiere a mi cuenta empresas
  Para automatizar las pruebas de software.

  Scenario: MiCuentaEmpresas - Pantalla 1,  login
    #Given Estoy en la página de inicio "Página Mi cuenta Empresas" en la url "https://micuentab2b.tigo.com.co/"
    Given Estoy en la página de inicio "Página Mi cuenta Empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
    When llevará al formulario con el objeto "B2B iniciar sesion"
    And llevará al formulario con el objeto "B2B crear cuenta"
    And llevará al formulario con el objeto "B2B cómo crear cuenta"
    And moverse hasta la posicion "Final"
    And el campo "B2B card cómo crear cuenta" tiene el texto "¿Cómo crear su cuenta del portal Mi Cuenta Empresas?"
    And el campo "B2B card cómo consultar detalle" tiene el texto "¿Cómo consultar el detalle de Arma Tu Plan?"
    And el campo "B2B card cómo pagar facturas" tiene el texto "¿Cómo realizar el pago de múltiples facturas?"
    And doy clic en "B2B iniciar sesion"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo Mi Cuenta"
    And doy clic en "Validar Mi Cuenta"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena Mi Cuenta"
    And doy clic en "Continuar Mi Cuenta"
    And Espero 5 segundos
