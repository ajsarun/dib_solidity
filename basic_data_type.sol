pragma solidity >=0.6.6 < 0.8.0;
contract DataType {
    int public i;
    uint public ui;
    bool public b;
    string public s;
    address public addr;
    
    function setInt(int _i) public {
        i = _i;
    }
    function setUint(uint _ui) public {
        ui = _ui;
    }
    function setBool(bool _b) public {
        b = _b;
    }
    function setString(string memory _s) public {
        s = _s;
    }
    
    function setAddress() public {
        addr = msg.sender;
    }
    
}
