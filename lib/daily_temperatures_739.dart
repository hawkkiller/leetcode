/// [issue on leetcode](https://leetcode.com/problems/daily-temperatures)
class DailyTemperaturesSolution {
  List<int> dailyTemperatures(List<int> temperatures) {
    final List<int> stack = [];
    final result = List.filled(temperatures.length, 0);
    for (int i = 0; i < temperatures.length; i++) {
      if (stack.isEmpty) {
        stack.add(i);
        continue;
      }
      while (stack.isNotEmpty && temperatures[stack.last] < temperatures[i]) {
        int p = stack.removeLast();
        result[p] = i - p;
      }
      stack.add(i);
    }
    return result;
  }
}
