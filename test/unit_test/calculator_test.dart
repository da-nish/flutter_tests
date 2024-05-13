import 'package:flutter_test/flutter_test.dart';
import 'package:testcase_app/calculator.dart';

/*

  test("des",(){}) to test a feature and we can add multiple testcases related to a feature
  like we are doing addition test with multiple testcases

  group("desc",(){}) to test multiple features, we can define test("",(){}) inside it

  setUp() always make sure it will run before tests, we use it setup object 
  Registers a function to be run before tests. This function will be called before each test is run.

  tearDown it will run after perticular test

*/

void main() {
  Calculator? calculator;
  setUp(() {
    print("setup called");
    calculator = Calculator();
  });
  test("Calculator +:", () {
    int t1 = calculator!.add(2, 3);
    expect(t1, 5);
    expect(t1, isNot(0));
  });

  test("Calculator -:", () {
    int t1 = calculator!.substract(2, 3);
    expect(t1, -1);
    expect(t1, isNot(0));
  });

  group("grouping above test", () {
    test("Calculator +:", () {
      int t1 = calculator!.add(2, 3);
      expect(t1, 5);
      expect(t1, isNot(0));
    });

    test("Calculator -:", () {
      int t1 = calculator!.substract(2, 3);
      expect(t1, -1);
      expect(t1, isNot(0));
    });
  });
}
