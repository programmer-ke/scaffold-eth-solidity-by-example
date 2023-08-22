// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./StructDeclaration.sol";

contract StructExample {

  Todo[] public todos;

  function create(string calldata _text) public {
    // showing the three ways to initialize a struct

    todos.push(Todo(_text, false));

    todos.push(Todo({text: _text, completed: false}));

    Todo memory todo;

    todo.text = _text;
    // by default bool completed is false

    todos.push(todo);
  }

  // solidity automatically created a getter. Below is for demo purposes only
  function get(uint _index) public view returns (string memory text, bool completed) {
    Todo storage todo = todos[_index];
    return (todo.text, todo.completed);
  }

  function updateText (uint _index, string calldata _text) public {
    Todo storage todo = todos[_index];
    todo.text = _text;
  }

  function toggleCompleted (uint _index) public {
    Todo storage todo = todos[_index];
    todo.completed = !todo.completed;
  }
    
}
