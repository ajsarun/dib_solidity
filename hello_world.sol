pragma solidity >=0.6.6 < 0.8.0;
contract HelloWorld {    
    string private word;    
    constructor () public {        
        word = "Hello World";    
    }  
    function getWord() public view returns (string memory) {
        return word;
    }
 }