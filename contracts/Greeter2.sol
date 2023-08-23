//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Greeter2 {
    string private greeting;

    constructor() {
        greeting = "This is greeter 2";
    }

    function greet2() public view returns (string memory) {
        return greeting;
    }

    function setGreeting2(string memory _greeting) public {
        greeting = _greeting;
    }
}
