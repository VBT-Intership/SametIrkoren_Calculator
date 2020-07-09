import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Calc {
  double num1;
  double num2;

  Calc(double firstNum, double secondNum) {
    this.num1 = firstNum;
    this.num2 = secondNum;
  }

  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double expontentiate(double firstNum, double secondNum) {
    double exponentProd = pow(firstNum, secondNum);

    return exponentProd;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  static void backToMainMenu() {
    print("\nAna Menüye dön...\n");
    wholeThing();
  }

  static void wholeThing() {
    print("""
        \Dart Hesap Makinesi Hoş Geldin! 
        \nİki sayı üzerinde işlem yapmanıza olanak sağlar 
        \nİlk sayıyı giriniz. \nÇıkmak için 'exit' yazın \n""");

    String firstInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    firstInput = firstInput.trim();
    double firstNum = 0.0;

    if (firstInput == "exit") {
      exit(0);
    } else {
      firstNum = double.parse(firstInput);
    }

    print("\nİkinci sayıyı girin.\n");

    String secondInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    secondInput = secondInput.trim();
    double secondNum = 0.0;

    if (secondInput == "exit") {
      exit(0);
    } else {
      secondNum = double.parse(secondInput);
    }

    Calc calc1 = new Calc(firstNum, secondNum);

    print("""\nİstediğiniz işlemi seçin.
    \n + Toplama
    \n - Çıkarma
    \n * Çarpma
    \n ** Üs Alma
    \n / Bölme """);

    String operator = stdin.readLineSync(encoding: Encoding.getByName("utf-8"));
    operator = operator.trim();

    switch (operator) {
      case "+":
        print(
            "${calc1.num1}  ${calc1.num2}  = ${calc1.add(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "-":
        print(
            "${calc1.num1}  ${calc1.num2}  = ${calc1.subtract(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "*":
        print(
            "${calc1.num1}   ${calc1.num2}  = ${calc1.multiply(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "**":
        print(
            "${calc1.num1}  ${calc1.num2}  = ${calc1.expontentiate(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "/":
        print(
            "${calc1.num1}  ${calc1.num2}  = ${calc1.divide(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "exit":
        exit(0);
        break;
      default:
        print("Girdiğiniz değer tanımlanmadı.");
        backToMainMenu();
        break;
    }
  }
}
