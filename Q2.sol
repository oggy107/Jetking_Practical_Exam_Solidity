// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// Write a Smart Contract for understanding Global Variables in Solidity Programming Language.

// Global variables are predefined variables in solidity which can be called form anywhere within the contract
// Following are functions which returns the data stored in these variables
contract GlobalVariables {
    /**
     * @dev address that sent current tx
     */
    function getMsgSender() public view returns (address){
        return msg.sender;
    }

    /**
     * @dev ammount in wei sent
     */
    function getMsgValue() public payable returns (uint){
        return msg.value;
    }

    /**
     * @dev first 4 bytes of calldata
     */
    function getMsgSig() public pure returns (bytes4){
        return msg.sig;
    }

    /**
     * @dev calldata
     */
    function getMsgData() public pure returns (bytes calldata){
        return msg.data;
    }

    /**
     * @dev current block number
     */
    function getblockNumber() public view returns (uint){
        return block.number;
    }

    /**
     * @dev address of miner who mined current block
     */
    function getblockCoinbase() public view returns (address){
        return block.coinbase;
    }

    /**
     * @dev current chain id
     */
    function getblockChainid() public view returns (uint){
        return block.chainid;
    }

    /**
     * @dev current gas limit
     */
    function getblockGaslimit() public view returns (uint){
        return block.gaslimit;
    }

    /**
     * @dev timestamp of current block
     */
    function getblockTimestamp() public view returns (uint){
        return block.timestamp;
    }

    /**
     * @dev address of account that originally created transaction 
     */
    function getTxOrigin() public view returns (address){
        return tx.origin;
    }

    /**
     * @dev current gas price
     */
    function getTxGas() public view returns (uint){
        return tx.gasprice;
    }
}
