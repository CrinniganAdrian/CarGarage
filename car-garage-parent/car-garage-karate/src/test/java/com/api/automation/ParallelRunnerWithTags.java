package com.api.automation;


import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

class ParallelRunnerWithTags {

	@Test
	public void executeKarateTest() {
		Builder aRunner = new Builder();
		aRunner.path("classpath:com/api/automation/tags");
		aRunner.tags("@Confidence");
		aRunner.parallel(5);
	}

}
