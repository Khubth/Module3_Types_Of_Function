// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KhuToken is ERC20, Ownable {
    constructor() ERC20("KhuToken", "PTH") Ownable(msg.sender) {}

   
    function mintOfTokens(address recipient, uint256 tokenAmount) external onlyOwner {
        _mint(recipient, tokenAmount);
    }


    function burnOfTokens(uint256 tokenAmount) public {
        _burn(msg.sender, tokenAmount);
    }

 
    function transferOfTokens(address recipient, uint256 tokenAmount) public returns (bool) {
        _transfer(msg.sender, recipient, tokenAmount);
        return true;
    }
}
