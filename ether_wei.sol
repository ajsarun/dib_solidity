pragma solidity >=0.6.6 <0.8.0;
contract EtherUnits {
    uint public oneWei  = 1 wei;
    bool public isOneWei = oneWei == 1;
    uint public oneEther = 1 ether;
    bool public isOneEther = oneEther == 1e18;
}