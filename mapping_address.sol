pragma solidity >=0.6.6 < 0.8.0;
contract MappingAddress {
    mapping(address=>uint) public addressNumber;
    function setNumberToAddress(address addr, uint num) public {
        addressNumber[addr] = num;
    }
    function getNumberFromAddress(address addr) public view returns (uint) {
        return addressNumber[addr];        
    }
    function resetNumberOfAddress(address addr) public {
        delete addressNumber[addr];
    }
}