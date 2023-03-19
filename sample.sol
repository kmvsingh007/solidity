// SPDX-License-Identifier: MIT
  /**
   * @title Sample
   * @dev sample contract
   * @custom:dev-run-script sample.sol
   */
pragma solidity >=0.8.2 <0.9.0;

contract sample {
 
    uint number;
    string str;
    int signedInt;
    bool isValid;

    function setNumber(uint _number) public {
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }

    function setSignedInt(int _number) public {
        signedInt = _number;
    }

    function getSignedInt() public view returns(int){
        return signedInt;
    }
    
    function setIsValid(bool _isValid) public {
        isValid = _isValid;
    }

    function getIsValid() public view returns(bool) {
        return isValid;
    }

    function setString(string memory _str) public {
        str = _str;
    }

    function getString() public view returns(string memory) {
        return str;
    }
}