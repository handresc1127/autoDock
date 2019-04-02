#Author: Henry Andres Correa Correa
#Keywords Summary : Cedula, Validacion, Documento
@issue:ADP-26 @Pasarela
Feature: HU009 CC válida en campo número de documento
  Como Tigoune
  Quiero realizar pruebas automatizadas de la consulta de facturas del servicio fijo
  Para garantizar que haya consistencia en los datos entre pantallas

  Scenario: Pasarela - Documento es un texto
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "no numérico" en el campo "número de documento"
    Then el campo "número de documento" tiene el texto ""
    
  Scenario: Pasarela - Documentos de más de 13 dígitos
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "12345678901234" en el campo "número de documento"
    Then mostrará en el valor del campo "número de documento" el texto "12345678901"

  Scenario: Pasarela - Documentos de N dígitos
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "123456789" en el campo "número de documento"
    And el campo "label error documento" tiene el texto "El documento no es valido, por favor verifícalo."
    And el campo "label error documento" tiene el atributo "color" en el valor "rojo"

  Scenario: Pasarela - Documento cedula válida sin facturas
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "Hogar_numDocumento sin facturas" en el campo "número de documento"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico H"
    And doy clic en "Consultar H clic"
    Then el campo "Linea sin facturas" tiene el texto "No se encontraron datos en la consulta."
    And el campo "Linea sin facturas" tiene el atributo "color" en el valor "rgba(255, 255, 255, 1)"
    And el campo "Linea sin facturas" tiene el atributo "background-color" en el valor "rgba(0, 200, 255, 1)"

  Scenario: Pasarela - Documento cedula válida con facturas
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "Hogar_numDocumento con facturas" en el campo "número de documento"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico H"
    And doy clic en "Consultar H clic"
    Then llevará al formulario con el objeto "list facturas"
  
  Scenario: Pasarela - Visualización de datos de factura de servicios fijos
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "Hogar_numDocumento con una factura" en el campo "número de documento"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico H"
    And doy clic en "Consultar H clic"
    Then llevará al formulario con el objeto "title-detail"
    And el campo "title-detail" tiene el texto "RESUMEN DE TU TRANSACCIÓN"
    And el campo "Numero del Producto" comienza con el texto "*******"
    And el campo "Fecha límite de pago" no está vacío
    And el campo "Referente de pago" no está vacío
    And el campo "Valor a pagar" no está vacío
