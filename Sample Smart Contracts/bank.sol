pragma solidity ^0.4.0;

contract SimpleBank {

  mapping (address => uint) balances;

  address public owner;
  address public _reciever;

  event LogDepositMade(address accountAddress, address recaddress, uint amount);

  function SimpleBank(address rec) {
    owner = msg.sender;
    balances[msg.sender] = 100;
    _reciever = rec;
    balances[_reciever] = 100;
  }

  function deposit(uint dep_amt) public returns (uint) {
    if(balances[_reciever] >= dep_amt && msg.sender != _reciever) {
        balances[_reciever] -= dep_amt;
        balances[msg.sender] += dep_amt;
    }
    LogDepositMade(msg.sender, _reciever, dep_amt);
    return balances[msg.sender];
  }

  function withdraw(uint withdrawAmount) public returns (uint remainingBalance) {
    if(balances[msg.sender] >= withdrawAmount) {
      balances[msg.sender] -= withdrawAmount;
      balances[_reciever] += withdrawAmount;
    }
    return balances[msg.sender];
  }

  function balanceReciever() constant returns (uint) {
    return balances[_reciever];
  }

  function balance() constant returns (uint) {
    return balances[msg.sender];
  }

}