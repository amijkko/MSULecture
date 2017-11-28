struct Account {
  uint balance;
}
Account[] accounts;
uint totalSupply;
function disburse(uint amount) {
  deduct(msg.sender, amount);
  for(var i = 0; i < accounts.length; i++) {
    accounts[i].balance += (amount * accounts[i].balance) / totalSupply;
  }
}
