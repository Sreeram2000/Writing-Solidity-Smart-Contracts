pragma solidity ^0.4.0;

contract Subcurrency {
    
 address public minter;
 mapping (address => uint) public coinBalances;
 
 event Sent(address from, address to, uint sum);
 
 function Coin() {
   minter = msg.sender;
 }
 
 function mint(address receiver, uint sum) {
   if (msg.sender != minter) return;
   coinBalances[receiver] += sum;
 }
 
 function send(address receiver, uint sum) {
   if (coinBalances[msg.sender] < sum) return;
   coinBalances[msg.sender] -= sum;
   coinBalances[receiver] += sum;
   Sent(msg.sender, receiver, sum);
 }
 
 function getcoinBalances(address _account) returns (uint) {
   return coinBalances[_account];
}

}