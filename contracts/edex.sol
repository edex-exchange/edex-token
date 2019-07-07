pragma solidity ^0.5.8;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';


contract Edex is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {

    constructor(address _holder)
    ERC20Burnable()
    ERC20Mintable()
    ERC20Detailed("Edex", "EDX", 18)
    ERC20()
    public {
        _mint(_holder, 10000000 * 10 ** 18);
        _addMinter(_holder);
    }

}