pragma solidity >=0.6.6 < 0.8.0;
contract OnedimArrayDemo {
    uint[3] public a = [7,8,9]; //fixed size array
    uint[] public b; //dynamic array
    uint [] public c = [1,2,3]; //dynamic array
    function setA() public {
        a[0] = 1;
        a[1] = 2;
        a[2] = 3;
        //a[3] = 4;
    }
    function setB() public {
        b.push(1);
        b.push(2);
        b.push(3);
        b.push(4);
    }
    function getAIndex(uint index) public view returns (uint) {
        return a[index];
    }
    function getBIndex(uint index) public view returns (uint) {
        return b[index];
    }
    
    function getA() public view returns (uint[3] memory) {
        return a;
    }
    
    function getB() public view returns (uint[] memory) {
        return b;
    }
    function pushB(uint val) public {
        b.push(val);
    }
    function popB() public {
        b.pop();
    }
    function removeB(uint index) public {
        //not really delete but set the value at the index to 0
        delete b[index];
    }
    function removeBCompact(uint index) public {
        //remove and compact array by moving the last element of the array 
        //to the place of the index, then remove the last element using pop()
        b[index] = b[b.length-1];
        b.pop();
    }

}
