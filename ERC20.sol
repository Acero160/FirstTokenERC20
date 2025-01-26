// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract ConquerERC20 is ERC20, Ownable {


    
    //Variables
    uint256 private _maxSupply;
    error DubaiERC20MaxSupply();

    //Events
    event MintDubaiERC20(address indexed account, uint256 amount);
    event BurnDubaiERC20(address indexed account, uint256 amount);

    constructor(uint256 _maxSupply_) ERC20("Dubai ERC20", "DXB") Ownable(msg.sender){
        _maxSupply = _maxSupply_;
    }



    //Functions

    function mint (address account, uint256 value) external onlyOwner {
        if (totalSupply()+value > _maxSupply){
            revert DubaiERC20MaxSupply();
        }
        _mint(account, value);


        emit MintDubaiERC20(account, value);
    }


    function burn ( uint256 value) external {
        _burn(msg.sender, value);


        emit BurnDubaiERC20(msg.sender, value);
    }
}