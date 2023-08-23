// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract Event {
  // upto 3 event params can be indexed. Indexing helps filter by parameter

  event Log(address indexed sender, string message);
  event AnotherLog();

  function test() public {
    emit Log(msg.sender, "Hello, world!");
    emit Log(msg.sender, "Hello, event world!");
    emit AnotherLog();
  }
}
