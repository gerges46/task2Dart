import 'dart:io';
// banking task
void main() {
  /*int y=6;
  String v ="hello ";
dynamic v1=9;
int d=int.parse(stdin.readLineSync()!);
  print(d);
  String name=r"thrawt \samy";*/
  double accountBalance = 1000;
  bool keep = true;
  int pinNumber = 0;
  int maxAttemps = 3;
  // the first time enter pin
  print("enter your const pin contain 4 numbers");
  int firstPin = int.parse(stdin.readLineSync()!);
  while (pinNumber < maxAttemps) {
    print("please enter your current pin");
    int currentPin = int.parse(stdin.readLineSync()!);
    if (firstPin == currentPin && firstPin.toString().length == 4) {
      while (keep) {
        print(
            "enter your choose from \n 1.Check Balance\n 2. Deposit Money \n 3. Withdraw Money\n 4. Exit");
        int choose = int.parse(stdin.readLineSync()!);
        if (choose > 0 || choose > 4) {
          switch (choose) {
            case 1:
              print(accountBalance);
              break;
            case 2:
              print("please enter  amount to deposit");
              double deposit = double.parse(stdin.readLineSync()!);
              if (deposit > 0) {
                accountBalance += deposit;
                print(
                    "your deposit is $deposit and your accountBalance is  $accountBalance");
              } else {
                print("error please enter validate positive  deposit");
              }
              break;
            case 3:
              print("please enetr enter the amount to withdraw");
              double amountWithdraw = double.parse(stdin.readLineSync()!);
              if (amountWithdraw <= accountBalance) {
                accountBalance -= amountWithdraw;
                print(
                    "your deposit is $amountWithdraw and your accountBalance is  $accountBalance");
              } else {
                print(
                    "please amountWithdraw must be smaller than accountBalance try latter ");
              }
              break;
            case 4:
              print("Exiting the program gracefully...");
              keep = false;
              break;
            default:
              print("Invalid choice. Please try again.");
          }
        } else {
          print("please choose from 1 to 4 only ");
        }
      }
    } else {
      pinNumber++;
      if (pinNumber < maxAttemps) {
        print("Incorrect PIN. You have ${maxAttemps - pinNumber} attempt");
      } else {
        print("you entered to much attempts try later");
      }
    }
  }
}
