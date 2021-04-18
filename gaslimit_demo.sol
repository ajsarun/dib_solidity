pragma solidity >=0.6.6 < 0.8.0;
contract GasLimit {
    uint public round = 0;
    function loopForever() public {
        while(true) {
            round += 1;    
        }
    }
} 