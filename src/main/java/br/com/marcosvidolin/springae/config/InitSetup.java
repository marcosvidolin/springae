package br.com.marcosvidolin.springae.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class InitSetup implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// ObjectifyService.register(Ponto.class);
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
	}

}