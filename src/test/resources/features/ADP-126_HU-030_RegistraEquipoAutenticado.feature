#Author: Nelson Mesa
#Keywords Summary :
@issue:ADP-126 @MiCuenta
Feature: HU030 Registra Equipo Autenticado
  
YO como usuario de mi cuenta Tigo 
QUIERO ingresar a Registra tu Equipo
PARA registrar el equipo

  Scenario: Registra tu equipo
    Given Estoy en la página de inicio "Página mi cuenta tigo" en la url "https://tigoselfcareregional-uat-co.tigocloud.net"
    When doy clic en "Registra tu equipo"
    And voy a la pestaña "ultima"
    Then lo llevará a la página "https://www.tigo.com.co/atencion-al-cliente/registra-tu-equipo" 
    And doy clic en "Realizalo Ahora" 
    And voy a la pestaña "ultima"
    And lo llevará a la página "https://registraequipo.tigocloud.net/personas/atencion-al-cliente/canales-de-servicio/registro-equipo"
    And ingreso "3008913170" en el campo "Numero linea"
    And Presiono la tecla "Tab"
   	And doy clic en el elemento actual
   	And Espero 15 segundos
   	#Para evitar el captchar hay que hacer clic sostenido por unos segundos y mover un poco el mouse
   	
   	