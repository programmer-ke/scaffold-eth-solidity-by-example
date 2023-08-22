// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract Function {
  // functions can return multiple values
  function returnMany(uint _index0) public pure returns (uint, bool, uint) {
    return (_index0, true, 2);
  }

  // Return values can be named
  function named() public pure returns (uint x, bool b, uint y) {
    return (1, true, 2);
  }

  // Return values can be assigned to their name
  function assigned() public pure returns (uint x, bool b, uint y) {
    b = true;
    y = 2;
    x = 1;
  }


  function destructuringAssignments ()
    public
    pure
    returns (uint, bool, uint, uint, uint)
  {
    (uint i, bool b, uint j) = returnMany(1);

    // values can be left out
    (uint x,, uint y) = (3, 4, 5);

    return (i, b, j, x, y);
    
  }
  
}
