abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  double deposit(double amount) {
    return balance += amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
    if (amount <= balance) {
      balance -= amount;
      balance -= (balance/100)*interestRate;

    }
    else {
      print('Insufficient funds for withdrawal :(');
    }
  }
}
class CurrentAccount extends Account{
  double overdraftLimit;
  CurrentAccount(int accountNumber,double balance,this.overdraftLimit):super(accountNumber,balance);

  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
    if(amount<=balance && amount<=overdraftLimit){
      balance-=amount;
    }
    else{
      print('Insufficient funds or overdraftLimit exceeds :(');
    }
  }

}


void main(){
  SavingsAccount savingsAccount = SavingsAccount(11-22-33-444, 1000, 3);
  print('SavingsAccount Initial Balance : ${savingsAccount.balance} Taka ');
  savingsAccount.deposit(500);
  print('SavingsAccount Balance After Deposit : New Balance = ${savingsAccount.balance} Taka');
  savingsAccount.withdraw(1000);
  print('SavingsAccount Balance After Withdraw : New Balance = ${savingsAccount.balance} Taka\n');

  CurrentAccount currentAccount = CurrentAccount(33-666-77, 10000, 500);
  print('CurrentAccount Initial Balance : ${currentAccount.balance} Taka');
  currentAccount.withdraw(500);
  print('CurrentAccount Balance After Withdraw : New Balance = ${currentAccount.balance}');
  currentAccount.deposit(1000);
  print('CurrentAccount Balance After Deposit : New Balance = ${currentAccount.balance}');
  currentAccount.withdraw(800); /// withdrawal amount exceeds the overdraft limit






}
