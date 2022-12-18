import 'package:leetcode/daily_temperatures_739.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('[739] Daily Temperatures', () {
    late final DailyTemperaturesSolution solution;

    setUpAll(() {
      solution = DailyTemperaturesSolution();
    });

    test(
      'Case 1',
      () {
        final testCase = [73, 74, 75, 71, 69, 72, 76, 73];
        final matcher = [1, 1, 4, 2, 1, 1, 0, 0];
        expect(
          solution.dailyTemperatures(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 2',
      () {
        final testCase = [30, 40, 50, 60];
        final matcher = [1, 1, 1, 0];
        expect(
          solution.dailyTemperatures(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 3',
      () {
        final testCase = [30, 60, 90];
        final matcher = [1, 1, 0];
        expect(
          solution.dailyTemperatures(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 4',
      () {
        final testCase = [30, 60, 90, 30, 60, 90];
        final matcher = [1, 1, 0, 1, 1, 0];
        expect(
          solution.dailyTemperatures(testCase),
          matcher,
        );
      },
    );

    test(
      'Case 5',
      () {
        final testCase = [30, 60, 90, 30, 60, 90, 30, 60, 90];
        final matcher = [1, 1, 0, 1, 1, 0, 1, 1, 0];
        expect(
          solution.dailyTemperatures(testCase),
          matcher,
        );
      },
    );
  });
}
