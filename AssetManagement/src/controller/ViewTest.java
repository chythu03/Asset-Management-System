package controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class ViewTest {

	@Test
	void testViewStatus() {
		//fail("Not yet implemented");
		View obj=new View();
		//String s=obj.ViewStatus("A10003");
		//assertEquals("working", s);
		
		String s=obj.ViewStatus("A1001");
		assertEquals("", s);
	}

	@Test
	void testViewLocation() {
		//fail("Not yet implemented");
		View obj=new View();
		String s=obj.ViewLocation("A10003");
		assertEquals("AC1 rec", s);
	}

	@Test
	void testViewAsset() {
		//fail("Not yet implemented");
		View obj=new View();
		String s=obj.ViewAsset("A10003");
		assertEquals("A10003 P100 AC1 rec working 00001 2018-11-15 20:24:10.0", s);
	}

}
