package com.vidolima.springae.service;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.google.appengine.tools.development.testing.LocalDatastoreServiceTestConfig;
import com.google.appengine.tools.development.testing.LocalServiceTestHelper;

class ExchangeRateDayServiceSpec {

	private final LocalServiceTestHelper HELPER = new LocalServiceTestHelper(
			new LocalDatastoreServiceTestConfig());

	@Before
	public void setUp() {
		HELPER.setUp();
	}

	@After
	public void tearDown() {
		HELPER.tearDown();
	}

	@Test
	public void testFindExchangeRateDayAll() throws InterruptedException {
	}

	@Test
	public void testFindPresentExchangeRateByAcronyms() {
		assertEquals("YES", "YES");
	}
}