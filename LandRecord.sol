pragma solidity 0.4.18 <= 0.6.12;

// To create a decentralized Land record App to manage land related transactions and ownership.  

contract LandRecord {

    string Owner;
    string landId;
    string OwnershipStart;
    string OwnershipEnd;
    int Price;

    function LandRecord(string newOwner,
    string newlandId,
    string newOwnershipStart,
    string newOwnershipEnd,
    int newPrice) public {

    Owner = newOwner;
    landId = newlandId;
    OwnershipStart = newOwnershipStart;
    OwnershipEnd = newOwnershipEnd;
    Price = newPrice;

    }

    function getRecord() public view returns(string,string,string,string,int) {
        return(Owner,landId,OwnershipStart,OwnershipEnd,Price);
        
    }
    
    function setRecord(string newOwner,string newOwnershipStart,string newOwnershipEnd, int newPrice) public {
        
        Owner = newOwner;
        OwnershipStart = newOwnershipStart;
        OwnershipEnd = newOwnershipEnd;
        Price = newPrice;
        
    }

}