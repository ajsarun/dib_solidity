pragma solidity >=0.6.6 < 0.8.0;
contract NestedMap {
    mapping(address => mapping(uint => bool)) public addressNumberBoolean;
    
    function getMapValueFromAddress(address addr, uint num) public view returns(bool) {
        return addressNumberBoolean[addr][num];
    }
    
    function setMapValueToAddress(address addr, uint num, bool flag) public  {
        addressNumberBoolean[addr][num] = flag;
    }
    function resetValueOfMapOfAddress(address addr, uint num) public {
        delete addressNumberBoolean[addr][num];
    }
}