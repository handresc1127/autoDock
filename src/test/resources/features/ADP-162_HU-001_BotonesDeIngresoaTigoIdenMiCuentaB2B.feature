#Author: Melissa Pineda
#Keywords Summary :
@issue:ADP-162 @MiCuentaEmpresas
Feature: HU001 Botones de ingreso a Tigold en Mi cuenta B2B

  
  YO como usuario de mi cuenta B2B
	QUIERO ingresar a mi cuenta
	PARA gestionar mi portafolio de servicios fijos y móviles.
  
  Scenario: Mi Cuenta Empresas - Login Tigo ID desde el botón iniciar sesión
  	Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net/t"
		When doy clic en "B2B Iniciar Sesion"
		Then llevará al formulario con el objeto "Ingresar a tu cuenta"

  Scenario: Mi Cuenta Empresas - Login Tigo ID desde el botón crear cuenta
		Given Estoy en la página de inicio "Pagina mi cuenta empresas" en la url "https://tigob2bselfcare-uat-co.tigocloud.net"
		When doy clic en "B2B Crear Cuenta"
		Then llevará al formulario con el objeto "Crear tu cuenta"
		
		
    


