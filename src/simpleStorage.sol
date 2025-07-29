// commments

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract FirstContract {
    int64 num;

    // array
    uint64[] array = [1, 2, 3];

    // struct
    struct person {
        uint64 personNumber;
        string personName;
    }

    // object
    person public person1 = person({personNumber: 7, personName: "Person1"});

    // static array
    person[3] public staticArray;

    // update function
    function UpdateNum(int64 _num) public virtual {
        // means that child proces can override this function
        num = _num;
    }

    // retrive function - doesnt use much gas
    function retriveNum() public view returns (int64) {
        return num;
    }

    // dynamic array
    person[] public arrayOfPerson;

    // mapping
    mapping(uint64 => string) public numberOfPerson;

    // memory, calldata, storage
    // memory - storing variables temporarily that can be changed
    // calldata - storing variables temporarily that can't be changed
    // storage - storing variables permanently that can be changed
    function addPerson(string memory _personName, uint64 _personNumber) public {
        arrayOfPerson.push(person(_personNumber, _personName));
        numberOfPerson[_personNumber] = _personName;
    }
}

contract SecondContract {}

contract ThirdContract {}
