package com.store.api;

import org.junit.jupiter.api.DynamicNode;

import io.karatelabs.junit6.Karate;

public class TestRunner {

	@Karate.Test
	Iterable<DynamicNode> testObjects(){
		return Karate.run("classpath:features/objects.feature","");
	}
}
