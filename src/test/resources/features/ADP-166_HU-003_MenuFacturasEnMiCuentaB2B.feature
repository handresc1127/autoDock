#Author: Johann Romero
#Keywords Summary :
@issue:ADP-166 @MiCuentaEmpresas
Feature: HU003 Menú facturas en Mi cuenta B2B
  Yo como usuario de mi cuenta B2B
  Quiero Ingresar al menú factura
  Para conocer la información y descargar facturas de servicios fijos y móviles.

  Scenario: Mi Cuenta Empresas - Ingresar al menu de facturas fijo
    Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
    When doy clic en "B2B iniciar sesion"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo mi cuenta"
    And doy clic en "Validar Mi Cuenta"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
    And doy clic en "Continuar mi cuenta"
    And doy clic en "Cuenta Universidad"
    And Espero 1 segundos
    And doy clic en "Menú Factura" si es visible
    And doy clic en "Fijo B2B" si es visible
    Then lo llevará a la página "https://tigob2bselfcare-uat-co.tigocloud.net/factura-actual"
    And doy clic forzado en "Menu cuenta B2B"
    And doy clic en "Cerrar sesion B2B"

  Scenario: Mi Cuenta Empresas - Ingresar al menu de facturas movil
    Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
    When doy clic en "B2B iniciar sesion"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo mi cuenta"
    And doy clic en "Validar Mi Cuenta"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
    And doy clic en "Continuar mi cuenta"
    And doy clic en "Cuenta Universidad"
    And Espero 1 segundos
    And doy clic en "Menú Factura" si es visible
    And doy clic en "Movil B2B" si es visible
    Then lo llevará a la página "https://tigob2bselfcare-uat-co.tigocloud.net/factura-actual"
    And doy clic forzado en "Menu cuenta B2B"
    And doy clic en "Cerrar sesion B2B"
