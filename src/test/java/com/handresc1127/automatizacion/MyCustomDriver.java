package com.handresc1127.automatizacion;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeDriverService;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.thucydides.core.webdriver.DriverSource;

public class MyCustomDriver implements DriverSource{
	private static final Logger LOGGER = LoggerFactory.getLogger(DriverSource.class);
	
	@Override
	public WebDriver newDriver() {
		WebDriver driver=null;
		try {
            
            ChromeOptions options = new ChromeOptions();
            DesiredCapabilities capabilities = DesiredCapabilities.chrome();
            System.out.println("capabilities"+capabilities);
            options.setCapability("download.default_directory", "target/downloads");
            //refs.put("download.default_directory", "/usr/local/path/to/download/directory");
            
			driver = new ChromeDriver(ChromeDriverService.createDefaultService(),options);
		}catch (Exception e) {
				LOGGER.error("Excepcion Custom Driver: ", e);
		}
		return driver;
	}

	@Override
	public boolean takesScreenshots() {
		return true;
	}
}
