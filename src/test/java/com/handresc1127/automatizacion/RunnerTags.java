package com.handresc1127.automatizacion;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;

//@tag1 AND @tag2= "@tag1","@tag2"
//@tag1 OR @tag2= "@tag1, @tag2"
//NOT @tag1 = "~@tag1"
@RunWith(CucumberWithSerenity.class)
@CucumberOptions(glue = { "com.handresc1127.automatizacion" }, features = {
		"src/test/resources/features/ADP-000_SPIKE_AdaptabilidadDeDatosRecargas.feature",
		"src/test/resources/features/ADP-000_SPIKE_AdaptabilidadDeDatos.feature",
		"src/test/resources/features/ADP-003_HU-001_ValidacionTC.feature",
		"src/test/resources/features/ADP-013_HU-002_ValidacionMSISDN.feature",
		"src/test/resources/features/ADP-014_HU-003_ValidacionEmail.feature",
		"src/test/resources/features/ADP-015_HU-004_LlenadoFormularioTC.feature",
		"src/test/resources/features/ADP-016_HU-005_LlenadoFormularioTD.feature",
		"src/test/resources/features/ADP-021_HU-006_ValidacionNumeroDocumento.feature",
		"src/test/resources/features/ADP-023_HU-007_NumerosNoValidosCelular.feature",
		"src/test/resources/features/ADP-024_HU-008_NumerosValidosCelular.feature",
		"src/test/resources/features/ADP-026_HU-009_ValidacionEnCampoNumeroDocumento.feature",
		"src/test/resources/features/ADP-027_HU-010_ValidacionDeNumeroDeTC.feature",
		"src/test/resources/features/ADP-028-HU-011_IconoEnTC.feature",
		"src/test/resources/features/ADP-029_HU-012_ValidacionCVV.feature",
		"src/test/resources/features/ADP-031_HU-013_ValidacionEmailHogar.feature",
		 "src/test/resources/features/ADP-153_HU-014_Tokenizacion.feature",
		"src/test/resources/features/ADP-144_HU-015_ConsultaConMultipleFactura.feature",
		"src/test/resources/features/ADP-170_HU-016_PagosExitososyRechazados.feature",
		"src/test/resources/features/ADP-043_HU-016_ValidacionTeclasEspecialesMSISDN.feature",
		"src/test/resources/features/ADP-044_HU-017_NumerosNoValidosRecargaYPaquetes.feature",
		"src/test/resources/features/ADP-045_HU-018_NumerosValidosRecargaYPaquetes.feature",
		"src/test/resources/features/ADP-046_HU-019_RecargaValoresPreestablecidos.feature",
		"src/test/resources/features/ADP-047_HU-020_RecargaOtroValor.feature",
		"src/test/resources/features/ADP-051_HU-021_PagoCompleto.feature",
		"src/test/resources/features/ADP-064_HU-022_IngresoNumeroValidoTigoDeudaPendiente.feature",
		"src/test/resources/features/ADP-076_HU-023_AdelantaSaldo.feature",
		"src/test/resources/features/ADP-176_HU-025_AutomatizarCentroDeAyudaDeRecargas.feature",
		"src/test/resources/features/ADP-063_ResponsiveDePantallasPasarelaMovil.feature",
		"src/test/resources/features/ADP-063_ResponsiveDePantallasPasarelaHogar.feature",
		"src/test/resources/features/ADP-089_ResponsiveDePantallasMiCuenta.feature",
		"src/test/resources/features/ADP-092_ResponsiveDePantallasRecargas.feature",
		"src/test/resources/features/ADP-066_HU-001_ValidarIngreso.feature",
		"src/test/resources/features/ADP-067_HU-002_RegistroEnMiCuenta.feature",
		"src/test/resources/features/ADP-070_HU-003_FuncionalidadMicuentaAnonimo.feature",
		"src/test/resources/features/ADP-071_HU-004_BarraRegulatoria.feature",
		"src/test/resources/features/ADP-074_HU-005_ModuloConsultaTuVisita.feature",
		"src/test/resources/features/ADP-075_HU-006_CambioPlanMovil.feature",
		"src/test/resources/features/ADP-078_HU-007_PagarFacturaMovil.feature",
		"src/test/resources/features/ADP-079_HU-008_DescargaDeFacturaMovil.feature",
		"src/test/resources/features/ADP-080_HU-009_ConsumosMovil.feature",
		"src/test/resources/features/ADP-081_HU-010_AsesorPersonalizado.feature",
		"src/test/resources/features/ADP-082_HU-011_AgregarTarjetaServiciosMoviles.feature",
		"src/test/resources/features/ADP-083_HU-012_FacturaDigital.feature",
		"src/test/resources/features/ADP-084_HU-013_SaldosEnDinero.feature",
		"src/test/resources/features/ADP-085_HU-014_SoporteTecnico.feature",
		"src/test/resources/features/ADP-086_HU-015_MejoraTuPlan.feature", //Se comenta porque no esta la opcion
		"src/test/resources/features/ADP-087_HU-016_DescargaFacturaServiciosFijos.feature",
		"src/test/resources/features/ADP-090_HU-017_AgregarTarjetaServiciosFijos.feature",
		"src/test/resources/features/ADP-091_HU-018_CambioDatosFacturacionServiciosFijos.feature",
		"src/test/resources/features/ADP-093_HU-019_ServiciosFijos.feature",
		"src/test/resources/features/ADP-094_HU-020_CambioContrasenaWifi.feature",
		"src/test/resources/features/ADP-095_HU-021_CambioNombreRedWifi.feature",
		"src/test/resources/features/ADP-096_HU-022_CambioCanalWifi.feature",
		"src/test/resources/features/ADP-108_HU-023_CambiarDMZ.feature",
		"src/test/resources/features/ADP-109_HU-024_DetallesServiciosFijos.feature",
		"src/test/resources/features/ADP-110_HU-025_HistoricoConsumosTelefonia.feature",
		"src/test/resources/features/ADP-111_HU-026_ConsultaDePQR.feature",
		"src/test/resources/features/ADP-121_HU-027_CambioTipoFacturaFijo.feature",
		"src/test/resources/features/ADP-122_HU-028_ConsultaInformaciónCuentaMóvil.feature",
		"src/test/resources/features/ADP-123_HU-029_HistoricoDeFacturacion.feature",
		"src/test/resources/features/ADP-126_HU-030_RegistraEquipoAutenticado.feature",
		"src/test/resources/features/ADP-128_HU-032_VisitaTecnicaFijo.feature",
		"src/test/resources/features/ADP-129_HU-033_ConsultaServicioTelevision.feature",
		"src/test/resources/features/ADP-130_HU-034_ConfiguraciónSmartappsMovil.feature",
		"src/test/resources/features/ADP-131_HU-035_BloqueoDeSIMMovil.feature",
		"src/test/resources/features/ADP-133_HU-047_HistoricoFacturasMovil.feature",
		"src/test/resources/features/ADP-145_HU-038_ConsultaSaldoPrincipal.feature",
		"src/test/resources/features/ADP-000_SPIKE_AdaptabilidadDeDatosRecargas.feature",
		"src/test/resources/features/ADP-000_SPIKE_AdaptabilidadDeDatos.feature",
		"src/test/resources/features/ADP-003_HU-001_ValidacionTC.feature",
		"src/test/resources/features/ADP-013_HU-002_ValidacionMSISDN.feature",
		"src/test/resources/features/ADP-014_HU-003_ValidacionEmail.feature",
		"src/test/resources/features/ADP-015_HU-004_LlenadoFormularioTC.feature",
		"src/test/resources/features/ADP-016_HU-005_LlenadoFormularioTD.feature",
		"src/test/resources/features/ADP-021_HU-006_ValidacionNumeroDocumento.feature",
		"src/test/resources/features/ADP-023_HU-007_NumerosNoValidosCelular.feature",
		"src/test/resources/features/ADP-024_HU-008_NumerosValidosCelular.feature",
		"src/test/resources/features/ADP-026_HU-009_ValidacionEnCampoNumeroDocumento.feature",
		"src/test/resources/features/ADP-027_HU-010_ValidacionDeNumeroDeTC.feature",
		"src/test/resources/features/ADP-028-HU-011_IconoEnTC.feature",
		"src/test/resources/features/ADP-029_HU-012_ValidacionCVV.feature",
		"src/test/resources/features/ADP-031_HU-013_ValidacionEmailHogar.feature",
		 "src/test/resources/features/ADP-153_HU-014_Tokenizacion.feature",
		"src/test/resources/features/ADP-144_HU-015_ConsultaConMultipleFactura.feature",
		"src/test/resources/features/ADP-170_HU-016_PagosExitososyRechazados.feature",
		"src/test/resources/features/ADP-043_HU-016_ValidacionTeclasEspecialesMSISDN.feature",
		"src/test/resources/features/ADP-044_HU-017_NumerosNoValidosRecargaYPaquetes.feature",
		"src/test/resources/features/ADP-045_HU-018_NumerosValidosRecargaYPaquetes.feature",
		"src/test/resources/features/ADP-046_HU-019_RecargaValoresPreestablecidos.feature",
		"src/test/resources/features/ADP-047_HU-020_RecargaOtroValor.feature",
		"src/test/resources/features/ADP-051_HU-021_PagoCompleto.feature",
		"src/test/resources/features/ADP-064_HU-022_IngresoNumeroValidoTigoDeudaPendiente.feature",
		"src/test/resources/features/ADP-076_HU-023_AdelantaSaldo.feature",
		"src/test/resources/features/ADP-176_HU-025_AutomatizarCentroDeAyudaDeRecargas.feature",
		"src/test/resources/features/ADP-063_ResponsiveDePantallasPasarelaMovil.feature",
		"src/test/resources/features/ADP-063_ResponsiveDePantallasPasarelaHogar.feature",
		"src/test/resources/features/ADP-089_ResponsiveDePantallasMiCuenta.feature",
		"src/test/resources/features/ADP-092_ResponsiveDePantallasRecargas.feature",
		"src/test/resources/features/ADP-101_PruebaAdherenciaDePaquetes.feature",
		"src/test/resources/features/ADP-066_HU-001_ValidarIngreso.feature",
		"src/test/resources/features/ADP-067_HU-002_RegistroEnMiCuenta.feature",
		"src/test/resources/features/ADP-070_HU-003_FuncionalidadMicuentaAnonimo.feature",
		"src/test/resources/features/ADP-071_HU-004_BarraRegulatoria.feature",
		"src/test/resources/features/ADP-074_HU-005_ModuloConsultaTuVisita.feature",
		"src/test/resources/features/ADP-075_HU-006_CambioPlanMovil.feature",
		"src/test/resources/features/ADP-078_HU-007_PagarFacturaMovil.feature",
		"src/test/resources/features/ADP-079_HU-008_DescargaDeFacturaMovil.feature",
		"src/test/resources/features/ADP-080_HU-009_ConsumosMovil.feature",
		"src/test/resources/features/ADP-081_HU-010_AsesorPersonalizado.feature",
		"src/test/resources/features/ADP-082_HU-011_AgregarTarjetaServiciosMoviles.feature",
		"src/test/resources/features/ADP-083_HU-012_FacturaDigital.feature",
		"src/test/resources/features/ADP-084_HU-013_SaldosEnDinero.feature",
		"src/test/resources/features/ADP-085_HU-014_SoporteTecnico.feature",
		"src/test/resources/features/ADP-086_HU-015_MejoraTuPlan.feature",
		"src/test/resources/features/ADP-087_HU-016_DescargaFacturaServiciosFijos.feature",
		"src/test/resources/features/ADP-090_HU-017_AgregarTarjetaServiciosFijos.feature",
		"src/test/resources/features/ADP-091_HU-018_CambioDatosFacturacionServiciosFijos.feature",
		"src/test/resources/features/ADP-093_HU-019_ServiciosFijos.feature",
		"src/test/resources/features/ADP-094_HU-020_CambioContrasenaWifi.feature",
		"src/test/resources/features/ADP-095_HU-021_CambioNombreRedWifi.feature",
		"src/test/resources/features/ADP-096_HU-022_CambioCanalWifi.feature",
		"src/test/resources/features/ADP-108_HU-023_CambiarDMZ.feature",
		"src/test/resources/features/ADP-109_HU-024_DetallesServiciosFijos.feature",
		"src/test/resources/features/ADP-110_HU-025_HistoricoConsumosTelefonia.feature",
		"src/test/resources/features/ADP-111_HU-026_ConsultaDePQR.feature",
		"src/test/resources/features/ADP-121_HU-027_CambioTipoFacturaFijo.feature",
		"src/test/resources/features/ADP-122_HU-028_ConsultaInformaciónCuentaMóvil.feature",
		"src/test/resources/features/ADP-123_HU-029_HistoricoDeFacturacion.feature",
		"src/test/resources/features/ADP-126_HU-030_RegistraEquipoAutenticado.feature",
		"src/test/resources/features/ADP-128_HU-032_VisitaTecnicaFijo.feature",
		"src/test/resources/features/ADP-129_HU-033_ConsultaServicioTelevision.feature",
		"src/test/resources/features/ADP-130_HU-034_ConfiguraciónSmartappsMovil.feature",
		"src/test/resources/features/ADP-131_HU-035_BloqueoDeSIMMovil.feature",
		"src/test/resources/features/ADP-133_HU-047_HistoricoFacturasMovil.feature",
		"src/test/resources/features/ADP-145_HU-038_ConsultaSaldoPrincipal.feature",
	    "src/test/resources/features/ADP-146_HU-039_ConsultaMiContratoMovil.feature",    //Fallas de rendering en servidor jenkins
		"src/test/resources/features/ADP-147_HU-040_ConsultaMiPlan.feature",
		"src/test/resources/features/ADP-148_HU-041_ConsultadeOfertas.feature",
		"src/test/resources/features/ADP-149_HU-042_AdministrarServiciosMovil.feature",
		"src/test/resources/features/ADP-150_HU-043_ComprarPaquetesMovil.feature", //Se comenta porque ya la opción no está 
		"src/test/resources/features/ADP-151_HU-044_ConsultaServiciosMovil.feature",
		"src/test/resources/features/ADP-152_HU-045_ConocerBeneficiosPremiumMovil.feature",
		"src/test/resources/features/ADP-156_HU-001_FirmaContratoEcommerce.feature",
		"src/test/resources/features/ADP-160_HU-005_ActivaTuSimChat.feature",
		"src/test/resources/features/ADP-162_HU-001_BotonesDeIngresoaTigoIdenMiCuentaB2B.feature",
		"src/test/resources/features/ADP-163_HU-002_BotonCrearCuentaEnMiCuentaB2B.feature",
		"src/test/resources/features/ADP-167_HU-004_CambioEnvíoFacturaciónMóvilB2B.feature",
		"src/test/resources/features/ADP-170_HU-016_PagosExitososyRechazados.feature",
		"src/test/resources/features/ADP-171_HU-028_ValidacionMensajeErrorCuandoSeIngresaMsisdn.feature",
		"src/test/resources/features/ADP-172_HU-029_AutomatizarTérminosYCondiciones.feature",
		"src/test/resources/features/ADP-173_HU-026_DescargarComprobanteDeRecargas.feature", //Fallas de rendering en servidor jenkins
		"src/test/resources/features/ADP-174_HU-027_AutomatizarChatAyudaRecargas.feature",
		"src/test/resources/features/ADP-175_HU-024_ValidacionesDelCorreoElectronico.feature",
		"src/test/resources/features/ADP-178_HU-030_FlujosRecargas.feature", //Fallas de rendering en servidor jenkins
		"src/test/resources/features/ADP-177_HU-031_FlujosRecargasFallido.feature",
		"src/test/resources/features/ADP-178_HU-030_FlujosRecargas.feature", //Fallas de rendering en servidor jenkins
		"src/test/resources/features/ADP-176_HU-025_AutomatizarCentroDeAyudaDeRecargas.feature",
		"src/test/resources/features/ADP-166_HU-003_MenuFacturasEnMiCuentaB2B.feature",
		"src/test/resources/features/ADP-177_HU-031_FlujosRecargasFallido.feature",
		"src/test/resources/features/ADP-178_HU-030_FlujosRecargas.feature",
		"src/test/resources/features/ADP-176_HU-025_AutomatizarCentroDeAyudaDeRecargas.feature",
		"src/test/resources/features/ADP-166_HU-003_MenuFacturasEnMiCuentaB2B.feature",
		"src/test/resources/features/ADP-169_HU-005_CambioEnvíoDeFacturaciónEnFijoB2B.feature"},
		
		//"src/test/resources/features/ADP-054_ObjetosEspecialesEcommerce.feature",
		// "src/test/resources/features/ADP-165_HU-008_FirmaContratoMensaje
		// "src/test/resources/features/ecommerce.feature"
		//"src/test/resources/features/ADP-183_SPIKE_PruebaAdherenciaB2B.feature"



		tags = { "" }, monochrome = true, plugin = { "pretty", "html:target/reports/html/",
				"junit:target/reports/junit.xml", "json:target/reports/cukes.json" })

public class RunnerTags {
}