//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Counter {

  enum Status {
    Pending,
    Status,
    Shipped
  }

  uint public count;

  Status public status;

  function getStatus() public view returns (Status) {
    return status;
  }

  function setStatus(Status _status) public {
    status = _status;
  }

  function ship () public {
    status = Status.Shipped;
  }

  function resetStatus() public {
    delete status;
  }
  
  function get() public view returns (uint) {
    return count;
  }

  function inc() public {
    count += 1;
  }

  function dec() public {
    count -= 1;
  }

  
}
