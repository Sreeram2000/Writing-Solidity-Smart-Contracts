pragma solidity 0.6.1;
contract metaCoin {	
    uint256 public value=100;
	mapping (address => uint) balances;
	constructor() public{
		balances[msg.sender] = 10;
	}
	function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		return true;
	}
}