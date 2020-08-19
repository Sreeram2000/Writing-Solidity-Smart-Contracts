pragma solidity 0.5.1;

contract myContract {
    
    //Example 1 : Basic syntax.
    
    string public value;
    
    function set(string memory value1) public {
        value = value1;
    }
    
    //Example 2 : modifiers and access specifiers (Unix Epoch Clock).

    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }

    uint256 openingTime = 1597854699;

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    uint256 public peopleCount=0 ;
    mapping(uint => Person) public people;
    
    struct Person {
        uint _id;
        string _firstname;
        string _lastname;
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }

    function addPerson(string memory _firstname,string memory _lastname) public onlyWhileOpen onlyOwner {
        incrementCount();
        people[peopleCount] = Person(peopleCount,_firstname,_lastname);
    }


}
