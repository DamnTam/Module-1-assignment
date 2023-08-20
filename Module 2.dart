void main() {
  int cnt = 0;
  List<int> grade = [85, 92, 78, 65, 88, 72];
  for (var i in grade) {
    cnt += i;
  }
  int len = grade.length;
  var avg = cnt / len;
  int r_avg = avg.round();
  print("Student's average grade: $avg");
  print('Rounded average: $r_avg');
  if (r_avg >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
