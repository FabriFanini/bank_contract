// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract Excersice1 {

    struct Students {
        string name;
        string surname;
        uint8 age;
        bool exist;
    }
    
    mapping (address => Students) student;
    uint32 numStudents;

    Students [] studentList;
    address [] studentAddress;

    function signUp (string memory _name, string memory _surname, uint8 _age) public
    {
        if (!student[msg.sender].exist){
            student[msg.sender] = Students (_name, _surname, _age, true);
            studentList.push(student[msg.sender]);
            studentAddress.push(msg.sender);
            numStudents ++;
        }
    }

    function getStudentDataByAddress () public view returns (Students memory)
    {
        return student[msg.sender]; 
    }

    function getAllStudents () public view returns (Students [] memory)
    {
        return studentList;
    }

    //Otra forma de acceder a los datos de un estudiante a traves del address
    function getStudientById (uint8 id) public view returns (Students memory) 
    {
        return (student[studentAddress[id]]);
    }
}