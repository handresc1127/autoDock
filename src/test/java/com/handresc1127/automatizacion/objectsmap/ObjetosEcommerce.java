package com.handresc1127.automatizacion.objectsmap;

import org.openqa.selenium.By;

import com.handresc1127.automatizacion.utilities.ActionsUtil;

public class ObjetosEcommerce {

	public ObjetosEcommerce() { 
		// Ecommerce
		/*------------------------------------------- SPIKE --------------------------------------------------------*/
		ActionsUtil.objetosPut("droppable", 				By.xpath("//*[contains(@class,'droppable')]"));
		ActionsUtil.objetosPut("draggable", 				By.xpath("//*[contains(@class,'draggable')]"));
		ActionsUtil.objetosPut("balon",						By.id("ball"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 1 ---------------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("titlepage-title",			By.id("block-tigo-theme-page-title"));
		ActionsUtil.objetosPut("ingresarcorreo",			By.xpath("//*[@id='tigo-activation-activate-sim']/article/section[2]/div/div[1]/label"));
		ActionsUtil.objetosPut("correoelectronicoplansim",	By.xpath("//*[@id='edit-email']"));
		ActionsUtil.objetosPut("slidercaptcha",				By.xpath("//*[@id='tigo-activation-activate-sim']/article/section[2]/div/div[2]/div/div[1]"));
        ActionsUtil.objetosPut("chatiframe",				By.id("launcher"));
        ActionsUtil.objetosPut("chatenvivoiframe",			By.id("webWidget"));
        ActionsUtil.objetosPut("chat",				        By.xpath("//*[@id='Embed']/button"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 2 - Productos ---------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("pospago5.2", 				By.xpath("//label[contains(.,'Pospago 5.2')]"));
		ActionsUtil.objetosPut("pospago5.1", 				By.xpath("//label[contains(.,'Pospago 5.1')]"));
		ActionsUtil.objetosPut("continuaractivarplansim", 	By.xpath("//*[@id='edit-activate']"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 3 ---------------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("expedicion", 				By.xpath("//*[@id='tigo-activation-personal-data']/article/section[3]/div/div[4]/div/div[1]"));
		ActionsUtil.objetosPut("fechaexpedicion", 			By.xpath("//*[@id='tigo-activation-personal-data']/article/section[3]/div/div[4]/ul/li[20]"));
		ActionsUtil.objetosPut("activarplansime", 			By.xpath("//*[@id='edit-activate']"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 4 ---------------------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("continuarplansim", 			By.xpath("//*[@id='edit-submit']"));
		ActionsUtil.objetosPut("firmadecontrato", 			By.xpath("//*[@id='block-tigo-theme-page-title']/div/h1"));
		/*----------------------------------------------------------------------------------------------------------*/
		/*------------------------------------------- PANTALLA 5 FIRMA CONTRATO-------------------------------------*/
		/*----------------------------------------------------------------------------------------------------------*/
		ActionsUtil.objetosPut("paginafirmacontrato",		By.id("block-tigo-theme-page-title"));
		ActionsUtil.objetosPut("tomateunafotografia", 		By.xpath("//*[@id='tigo-activation-contrato']/section/article[1]/label/div[3]/div"));
		ActionsUtil.objetosPut("mensajeConfirmacionfoto", 	By.xpath("//*[@id='header']/div[1]/div/div[1]"));
		
		ActionsUtil.objetosPut("cargadorfoto", 				By.xpath("//*[@id='tigo-activation-contrato']/section/input[1]"));
		ActionsUtil.objetosPut("inputfoto", 				By.id("id-photo-picture"));
		ActionsUtil.objetosPut("labelfoto", 				By.xpath("//*[@id='tigo-activation-contrato']/section/article[1]/label"));
	}
}
