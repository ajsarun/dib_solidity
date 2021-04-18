pragma solidity >=0.6.6 < 0.8.0;

contract StructDemo {
    struct Student {
        string name;
        uint id;
    } 
    Student public student;
    function createStudent(uint id, string memory name) public {
        /*3 ways to initilize */
        student.id = id;
        student.name = name;
        
        /*student = Student({
            name: name,
            id: id
        });*/
        
        //student = Student(name, id); //short hand (functions like) should not use.
        
        
    }
    function getId() public view returns (uint) {
        return student.id;
    }
    function getName() public view returns (string memory) {
        return student.name;
    }
} 