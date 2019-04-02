package com.handresc1127.automatizacion.objectsmap;

import org.openqa.selenium.By;

import com.handresc1127.automatizacion.utilities.ActionsUtil;

public class ObjetosMiCuentaEmpresas {

	public ObjetosMiCuentaEmpresas() { 
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 1 - Login -------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("b2biniciarsesion",						By.xpath("//*[contains(@href,'/user/login_handler')]"));
		ActionsUtil.objetosPut("b2bcrearcuenta",						By.xpath("//*[contains(@href,'/user/create_handler')]"));
		ActionsUtil.objetosPut("b2bcomocrearcuenta", 					By.xpath("//*[contains(@href,'C%C3%B3mo-crear-Mi-Cuenta-Empresas')]"));
		ActionsUtil.objetosPut("b2bcardcomocrearcuenta",				By.xpath("(//*[@class='card-content'])[1]"));
		ActionsUtil.objetosPut("b2bcardcomoconsultardetalle",			By.xpath("(//*[@class='card-content'])[2]"));
		ActionsUtil.objetosPut("b2bcardcomopagarfacturas",				By.xpath("(//*[@class='card-content'])[3]"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 2 - Crear Cuenta B2B --------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("b2bcreaciondecuenta",					By.id("box-create-account"));
		ActionsUtil.objetosPut("b2btipodocumento",						By.xpath("(//input[@class='select-dropdown'])[1]"));
		ActionsUtil.objetosPut("b2btiposervicio",						By.xpath("(//input[@class='select-dropdown'])[2]"));
		ActionsUtil.objetosPut("b2bnumerodocumento",					By.id("edit-document-number"));
		ActionsUtil.objetosPut("b2breferenciadepago",					By.id("edit-referent-payment"));
		ActionsUtil.objetosPut("b2bcontinuarcrearcuenta",				By.xpath("//*[contains(@class,'primary button js-form-submit')]"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 3 -  PANTALLA MI TIGO ID                --------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		
		ActionsUtil.objetosPut("nombreyapellidob2b",				    By.id("idName"));
		ActionsUtil.objetosPut("continuaridb2b",				        By.id("idSubmit"));
		
	
		ActionsUtil.objetosPut("menufactura",                           By.xpath("//a[@class='dropdown-toggle' and contains(.,'Factura')]"));
		ActionsUtil.objetosPut("movilb2b",                              By.xpath("//*[contains(@href,'/change/environment/movil')]"));
		ActionsUtil.objetosPut("fijob2b",                               By.xpath("//*[contains(@href,'/change/environment/fijo')]"));
	    ActionsUtil.objetosPut("detallesb2b",                           By.xpath("//*[contains(@href,'detalle-factura')]"));
	    ActionsUtil.objetosPut("menucuentab2b",                         By.className("dropdown-button"));
	    ActionsUtil.objetosPut("cerrarsesionb2b",                       By.xpath("//*[@id='account_dropdown']/li[2]/a"));
		ActionsUtil.objetosPut("recibiromodificarfactura",              By.xpath("//*[contains(@href,'#modalFormDeliveryStatus')]"));
		ActionsUtil.objetosPut("opciondigital",                         By.xpath("//*[@id='form-delivery-1d4bc78c-cc7b-49ee-9a79-6abe61f86db4']/div/div[2]/div/label"));
		ActionsUtil.objetosPut("correoarecibirfactura",                 By.id("mail"));
		ActionsUtil.objetosPut("aceptarcambiofactura",                  By.xpath("//*[@class ='right waves-effect waves-light btn btn-primary send-conf']"));
		ActionsUtil.objetosPut("cuentaparroquia",                       By.xpath("//a[contains(.,' PARROQUIA SAN VICENTE DE  ')]"));
		ActionsUtil.objetosPut("cuentauniversidad",                     By.xpath("//a[contains(.,' Universidad Eafit ')]"));
		ActionsUtil.objetosPut("opcionimpresa",                         By.xpath("//*[@id='form-delivery-1d4bc78c-cc7b-49ee-9a79-6abe61f86db4']/div/div[4]/div/label"));
		ActionsUtil.objetosPut("checkimpresa",                          By.xpath("//*[@id='impresa-1d4bc78c-cc7b-49ee-9a79-6abe61f86db4']"));
		ActionsUtil.objetosPut("verdetallesb2b",                        By.xpath("//*[@id=\'0\']/li[1]/a"));
		ActionsUtil.objetosPut("puntos",                                By.xpath("/html/body/div[1]/div/main/div/div/div[4]/div/div/div/div/div[3]/div/div/div/div[1]/div[2]/div[3]/a/i"));
		ActionsUtil.objetosPut("mensajeconfirmacionb2b",                By.xpath("/html/body/div[3]/div/main/div/div/div[3]/div/div/div[2]/p"));
	}
}