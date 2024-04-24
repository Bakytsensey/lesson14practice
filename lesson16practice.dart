import 'dart:math';

void main() {
  //1) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
  // элемент этого массива.
  // task1();

  // 2) Создать массив. Заполнить его от 0 до 10. Вывести на экран каждый
  // элемент в кубе.
  // task2();

  // 3) Создать массив. Заполнить его от 0 до 10. Сложить все элементы массива
  // task3();

  // 4) Создать массив из слов, Упорядочить все элементы по алфавиту в
  // порядке возрастания.
  // task4();

  // 5) Создать массив из слов, Упорядочить все элементы по алфавиту в
  // порядке убывания.
  // task5();

  // 6) Создать массив из слов, Упорядочить все элементы по длинне в порядке
  // возрастания.
  // task6();

  // 7) Дан массив с числами. Оставьте в нем только четные числа
  // print(task7());

  // 8) Дан массив с числами. Найдите сумму первых N элементов до
  // первого нуля. Пример: [1, 2, 3, 0, 4, 5, 6] - суммируем первые 3
  // элемента, так как дальше стоит элемент с числом 0.
  // task8();

  /////////////////////////////////////////////////////////////////////////////

  ///Через for
  // 1) Необходимо вывести на экран числа от 1 до 5. На экране должно быть:
  // 1 2 3 4 5
  // taks2_1();

  // 2)Необходимо вывести на экран числа от 5 до 1. На экране должно быть:
  // 5 4 3 2 1
  // task2_2();

  // 3) Необходимо вывести на экран таблицу умножения на 3:
  // task2_3();

  // 4) Найти сумму чисел от 100 до 200 кратных 17.
  // task2_4();

  // 5) Необходимо, чтоб программа выводила на экран вот такую
  // последовательность:
  // 7 14 21 28 35 42 49 56 63 70 77 84 91 98
  // task2_5();
  //
  //6)Необходимо вывести на консоль такую последовательность чисел:
  // 1 2 4 8 16 32 64 128 256 512
  task2_6();
}

void task1() {
  List array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  array.forEach((element) {
    print(element);
  });
}

void task2() {
  List array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  array.forEach((element) {
    // print(element * element * element);
    print(pow(element, 3));
  });
}

void task3() {
  List array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  array.forEach((element) {
    print(element * 10);
  });
}

void task4() {
  List<String> name = [
    'Bakyt',
    'Dastan',
    'Adil',
    'Tobokel',
    'Almas',
    'Aizirek',
    'AC'
  ];
  name.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  print(name);
}

void task5() {
  List<String> name = [
    'Bakyt',
    'Dastan',
    'Adil',
    'Tobokel',
    'Almas',
    'Aizirek',
    'AC',
    'Zebra'
  ];
  name.sort((a, b) => b.toLowerCase().compareTo(a.toLowerCase()));
  print(name);
}

void task6() {
  List<String> words = ['Mac', 'Dart', 'Bakyt', 'Camry', 'BMW', 'Dalbek', 'me'];
  words.sort((a, b) => a.length.compareTo(b.length));
  print(words);
}

task7() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers);
}

task8() {
  List<int> numbers = [1, 2, 3, 0, 5, 6, 7, 8, 9, 10];
  int n = 3;

  int sum = 0;
  int zeroIndex = numbers.indexOf(0);

  if (zeroIndex != -1) {
    for (int i = 0; i < n && i < zeroIndex; i++) {
      sum += numbers[i];
    }
  } else {
    for (int i = 0; i < n && i < numbers.length; i++) {
      sum += numbers[i];
    }
  }

  print('Сумма первых элементов до первого нуля: $sum');
}

void taks2_1() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

void task2_2() {
  for (int i = 5; i >= 1; i--) {
    print(i);
  }
}

task2_3() {
  int tablica = 3;

  for (int i = 1; i <= 10; i++) {
    int result = tablica * i;
    print('$tablica*$i=$result');
  }
}

void task2_4() {
  int sum = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      sum += i;
    }
  }
  print('Сумма чисел от 100 до 200, кратных 17: $sum');
}

task2_5() {
  int i = 7;

  while (i <= 98) {
    print(i);
    i += 7;
  }
}

task2_6() {
  int number = 1;
  while (number <= 512) {
    print(number);
    number *= 2;
  }
}
