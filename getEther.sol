// SPDX-License-Identifier: MIT
  /**
   * @title Get Ether
   * @dev get ether
   * @custom:dev-run-script getEther.sol
   */
pragma solidity >=0.8.2 <0.9.0;

contract getEther {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function withdraw() payable public {
        require(msg.sender == owner, "Only the contract owner can withdraw fund");
        owner.transfer(address(this).balance);
    }

    function convert() payable public returns(uint, uint, uint){
        uint weiValue = msg.value;
        uint etherValue = weiValue / 1 ether;
        uint gweiValue = weiValue / 1 gwei;

        return (weiValue, etherValue, gweiValue);
    }
}