pragma solidity >=0.6.6 < 0.8.0;
//use compiler version 0.6.6
contract MappingDemo {
    mapping(string => string) dictionary;
    constructor() public {
        dictionary["color"] = "สี";
        dictionary["dog"] = "สุนัข";
    }
    function lookup(string memory eng) public view returns (string memory) {
        return dictionary[eng];
    }   
}