pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract IAmRickToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function IAmRickToken(address _owner)  UpgradeableToken(_owner) {
    name = "IAmRickToken";
    symbol = "RICH";
    totalSupply = 1000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}