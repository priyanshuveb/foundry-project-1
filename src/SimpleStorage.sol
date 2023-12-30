// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating the language version

contract SimpleStorage {
    // Basic Types: bool, uint, int, address, bytes
    // Unlike uint & uint256 being same, the bytes & bytes32 are not same
    // bytes is an array

    // If not specified then the default visibility of the variables is internal
    uint256 myFavNumber = 34;
    int256 favInt = -88;
    bytes32 favBytes = "cat";
    string favString = "dog";

    struct Person {
        uint256 favNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;
    mapping(string => uint) public personFavNumber;

    // Person public person = Person(7, "Jenny");
    // Person public person = Person({favbNumber: 7, name: "Jenny"})

    // Visibility Types: public, private, external(only for functions), internal
    function store(uint256 _favNumber) public virtual {
        myFavNumber = _favNumber;
    }

    // Pure and View functions don't cost any gas to call if they're called externally from outside the contract. But they do cost gas if called internally by another function
    function retrieve() public view returns (uint256) {
        return myFavNumber;
    }

    // string is an array of bytes
    function addPerson(string memory _name, uint256 _favNumber) public {
        Person memory newPerson = Person(_favNumber, _name);
        listOfPeople.push(newPerson);
        // Or listOfPeople.push(Person(_favNumber, _name));
        personFavNumber[_name] = _favNumber;
    }

    // EVM can access and store information in six places (Data locations):
    // 1. Stack
    // 2. Memory
    // 3. Storage // variables declared outside the function are by default storage variable
    // 4. Calldata
    // 5. Code
    // 6. Logs

    // Data locations can only be specified for array, struct or mapping types

    // memory vs calldata
    // 1. both are temporary storage which only lasts till call to the contract gets completed
    // 2. memory variables can be modified/reassigned whereas calldata variables cannot be
}
