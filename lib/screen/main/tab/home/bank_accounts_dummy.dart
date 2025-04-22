import 'package:ttos_app/screen/main/tab/home/banks_dummy.dart';
import 'package:ttos_app/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 30000000);
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000000);
final bankAccountToss = BankAccount(bankTtos, 500000);
final bankAccountKakao =
    BankAccount(bankKakao, 7000000, accountTypeName: "입출금통장");

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
];
