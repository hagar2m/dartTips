void main() {
 List<String> _grades = ["A", "B", "C", "D"];
   
  Stream<String> getGrades() async*{
    for (int i = 0; i < _grades.length; i++) {
      await Future.delayed(const Duration(milliseconds: 50));
      yield _grades[i];
    }
  }
 
  getGrades().listen((item) => print("grade: $item"));
}
