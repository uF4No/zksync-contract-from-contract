//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {Greeter2} from "./Greeter2.sol";

contract Greeter {
    string private greeting;
    address[] greeterList;

    constructor(string memory _greeting) {
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function createGreeter() public returns (address) {
        Greeter2 newGreeter = new Greeter2();
        greeterList.push(address(newGreeter));
        return address(newGreeter);
    }

    function getList() public view returns (address[] memory) {
        return greeterList;
    }
}
