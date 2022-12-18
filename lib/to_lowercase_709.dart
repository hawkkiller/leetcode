/// [issue on leetcode](https://leetcode.com/problems/to-lower-case)
class ToLowerCaseSolution {
  String toLowerCase(String str) {
    return str.codeUnits
        .map((e) {
          if (e >= 65 && e <= 90) {
            return e + 32;
          }
          return e;
        })
        .map((e) => String.fromCharCode(e))
        .join();
  }
}
