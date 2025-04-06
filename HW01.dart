import 'dart:io';

void main() {
  stdout.write('정수 입력: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      if(number<0){
        print(number);
        return;
      }

      int num = number.abs();
      int sum = 0;

      while (num > 0) {
        sum += num % 10;
        num ~/= 10;
      }
      print(sum);

    } 
  }
}
