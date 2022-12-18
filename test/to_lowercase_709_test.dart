import 'package:leetcode/to_lowercase_709.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('[709] To Lower Case', () {
    late final ToLowerCaseSolution solution;

    setUpAll(() {
      solution = ToLowerCaseSolution();
    });

    test(
      'Case 1',
      () {
        final testCase = 'Hello';
        final matcher = 'hello';
        expect(
          solution.toLowerCase(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 2',
      () {
        final testCase = 'here';
        final matcher = 'here';
        expect(
          solution.toLowerCase(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 3',
      () {
        final testCase = 'LOVELY';
        final matcher = 'lovely';
        expect(
          solution.toLowerCase(testCase),
          matcher,
        );
      },
    );
  });
}
