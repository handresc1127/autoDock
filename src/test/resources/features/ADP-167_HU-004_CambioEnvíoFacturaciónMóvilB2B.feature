#Author: Alexandra Lasprilla
#Keywords Summary :
@issue:ADP-167 @MiCuentaEmpresas
Feature: HU004 Cambio Envío Facturación Móvil
  
  Yo como usuario de mi cuenta B2B
  Quiero modificar el envío de factura de digital a impreso
  Para conocer la información detallada de mi factura móvil

  Scenario: Mi Cuenta Empresas - Cambio de factura digital/impresa a impresa en servicios móvil
    Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
    When doy clic en "B2B Iniciar Sesion"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "correo mi cuenta"
    And doy clic en "Validar Mi Cuenta"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
    And doy clic en "Continuar mi cuenta"
    And Espero 1 segundos
    And doy clic en "Cuenta Universidad"
    And doy clic en "Menú Factura" si es visible
    And doy clic en "Movil B2B" si es visible
    And doy clic en "Detalles B2B" si es visible
    And doy clic en "Recibir o Modificar factura"
    And el campo "Check impresa" tiene el atributo "class" en el valor "ng-not-empty"
    And llevará al formulario con el objeto "Aceptar Cambio Factura"
  
  Scenario: Mi Cuenta Empresas - Cambio de factura impresa a digital en servicios móvil
    Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
    When doy clic en "B2B Iniciar Sesion"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "correo mi cuenta"
    And doy clic en "Validar Mi Cuenta"
    And desencripto "bXWxspvWWuLLx3rxzheNMw==" y lo guardo en "Clave guardada con seguridad"
    And ingreso "Clave guardada con seguridad" en el campo "Contrasena mi cuenta"
    And doy clic en "Continuar mi cuenta"
    And Espero 1 segundos
    And doy clic en "Cuenta Universidad"
    And doy clic en "Menú Factura" si es visible
    And doy clic en "Movil B2B" si es visible
    And doy clic en "Detalles B2B" si es visible
    And doy clic en "Recibir o Modificar factura"
    And doy clic en "Opcion Digital"
    And ingreso "automatizacionmicuenta@gmail.com" en el campo "Correo a recibir Factura"
    And llevará al formulario con el objeto "Aceptar Cambio Factura"
