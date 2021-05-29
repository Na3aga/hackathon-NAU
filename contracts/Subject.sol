// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Subject
{
    struct Student { // Struct
        string name;
        uint grade;
    }

    struct Work { // Struct
        string name;
        uint start_timestamp;
        uint end_timestamp;
        uint max_grade;

    }
    //List of properties
    mapping (address => bool) public teachers;
    uint public _total_grade;
    Work[] public _works;
    mapping(string => mapping(string => uint)) public grades;

    function add_work(Work work) public returns (bool){
        // TODO add require to be teacher
        if(teachers[msg.sender]){
            _works.push(work);
        } 
    }

    function TOTAL_GRADE() public view returns (uint){
        return _total_grade; 
    }

}