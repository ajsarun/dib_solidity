pragma solidity >=0.6.6 < 0.8.0;
contract MsgDemo {
    uint public value; 
    address public owner;
    function getGas() public view returns (uint) {
        return gasleft();
    }
    function getSender() public view returns(address) {
        return msg.sender;
    }
    function setValue() public payable  {
        value = msg.value;
        
    } 
    function ownerOnly() public view returns (address) {
        require (msg.sender == owner);
        return owner;    
    }
    function ownerOnlyModifier() public view checkForOnlyOwner returns (address) {
        return owner;
    } 
    modifier checkForOnlyOwner {
        require (msg.sender == owner);
        _;  
    }
    
}