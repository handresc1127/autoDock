#Author: Jose David Moreno Serrano
#Keywords Summary : Cedula, Validacion, Documento
@issue:ADP-144 @Pasarela
Feature: HU015 Consulta con multiples facturas
  Como Tigoune
  Quiero realizar pruebas automatizadas de la consulta de facturas del servicio fijo
  Para garantizar que haya consistencia en los datos entre pantallas
  
  Scenario: Pasarela - Visualización de datos de factura de servicios fijos
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "HOGAR"
    And selecciono "CC" en el campo "Tipo de documento"
    And ingreso "Hogar_numDocumento con facturas" en el campo "número de documento"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico H"
    And doy clic en "Consultar H clic"
    And llevará al formulario con el objeto "Boton Pagar F"
    Then doy clic en "Boton Pagar F"
    And llevará al formulario con el objeto "title-detail"
