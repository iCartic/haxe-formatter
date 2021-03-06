import formatter.FormatStatsTest;
import formatter.EmptyLinesTest;
import formatter.codedata.TokenListTest;
import testcases.EmptyLinesTestCases;
import testcases.ExpressionLevelTestCases;
import testcases.FormatRangeTestCases;
import testcases.IndentationTestCases;
import testcases.LineEndsTestCases;
import testcases.MissingTestCases;
import testcases.Other;
import testcases.SameLineTestCases;
import testcases.WhitespaceTestCases;
import testcases.WrappingTestCases;

class TestSuite extends massive.munit.TestSuite {
	public function new() {
		super();

		var singleRun:TestSingleRun = new TestSingleRun();
		if (!singleRun.isSingleRun()) {
			add(SelfTest);
			add(FormatStatsTest);
			add(TokenListTest);
			add(EmptyLinesTest);
		}

		add(EmptyLinesTestCases);
		add(ExpressionLevelTestCases);
		add(FormatRangeTestCases);
		add(IndentationTestCases);
		add(LineEndsTestCases);
		add(MissingTestCases);
		add(Other);
		add(SameLineTestCases);
		add(WhitespaceTestCases);
		add(WrappingTestCases);
	}
}
