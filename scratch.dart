import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String data = await task2();
  task3(data);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

//task2 is an asynchronous fn which doesn't return anything currently but will do so in future.
//await keyword ensures that the piece of code result and print happen only after the delay happens.

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 completed with $task2Data');
}
