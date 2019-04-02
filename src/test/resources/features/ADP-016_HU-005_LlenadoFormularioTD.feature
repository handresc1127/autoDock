#Author: Alexandra Lasprilla Cardona
#Keywords Summary :
@issue:ADP-16 @Pasarela
Feature: HU005 Llenado formulario TD
  Como Tigoune
  Quiero pruebas automatizadas de la casuística en el llenado de formulario de TD
  Para acelerar el proceso de desarrollo y garantizar integridad

  Background: seleccion medio de pago
    Given Estoy en la página de inicio "Pagina pago de facturas" en la url "https://transaccionesco-uat.tigocloud.net/servicios/facturas"
    When doy clic en "Movil"
    And ingreso "movil_msisdn con facturas" en el campo "Tu línea Tigo"
    And ingreso "prueba@prueba.com" en el campo "Correo electrónico M"
    And doy clic en "Consultar M clic"
    Then llevará al formulario con el objeto "title-detail"

  Scenario Outline: Pasarela - Transacción PSE obligatoriedad de campos
    Given Estoy en la página de selección de formas de pago con el tipo "Debito Bancario PSE" seleccionado
    And selecciono <banco> en el campo "Banco"
    And selecciono <tipoPersona> en el campo "Tipo de Persona"
    And ingreso <nombresApellidos> en el campo "Nombres y Apellidos"
    And selecciono <tipoDoc> en el campo "Tipo D"
    And ingreso <numeroDoc> en el campo "Número de documento D"
    And Presiono la tecla "tab"
    Then el campo "Pagar D" tiene el atributo "class" en el valor <estadoBotonPagar>
    And doy clic en "Cancelar Forma de Pago" si es visible

    Examples: 
      | campo a validar           | banco    | tipoPersona | nombresApellidos    | tipoDoc | numeroDoc   | estadoBotonPagar    |
      | "Banco"                   | ""       | "N"         | "nombres apellidos" | "CC"    | "123456789" | "button--inactive"  |
      | "Tipo de persona"         | "BAN.CO" | ""          | "nombre apellidos"  | "CC"    | "123456789" | "button--secondary" |
      | "Nombres y Apellidos"     | "BAN.CO" | "N"         | ""                  | "CC"    | "123456789" | "button--secondary" |
      | "Tipo de documento"       | "BAN.CO" | "N"         | "nombre apellidos"  | ""      | "123456789" | "button--secondary" |
      | "Número de documento"     | "BAN.CO" | "N"         | "nombre apellidos"  | "CC"    | ""          | "button--inactive"  |
      | "Todos los campos llenos" | "BAN.CO" | "N"         | "nombre apellidos"  | "CC"    | "123456789" | "button--secondary" |
