// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract specialVariables 
{
    /*
       are some global variables
       These variables are defined by default by the developer of this language
       Solidity also has several of these variables, and in this section we will discuss the most important of them

      msg.sendeer "return : address"                   // address massage sender
      msg.value "return : uint"                       // vaalue massage sender
      msg.data "return : bytes"                      // complate calldata
      block.coinbase "return : address payable"     // current Miner Block Address
      block.difficulty "return : uint"             // current block difficulty
      block.gaslimit "return : uint"              // current block gaslimit
      block.timestamp "return : uint"            // current block timestamp as seconds since unix epoch
      now "return : uint"                       // current block timestamp (alias for block timestamp).         //  It only works in version 5
      tx.origin "return : address "            // address sender the transaction
    */

        // msg.sendeer
        // A simple example
         address public admin;

        function _msg () public 
         {
       admin = msg.sender;
         }

         // msg.value
         //  A simple example
         uint public value_;
        function _value () public payable
        {
         value_ = msg.value;
        }

         // msg.data
         //  A simple example
         function data () public pure returns (bytes calldata)  /// & memory 
        {
         return msg.data;
        }

         // block.coinbase
         // It returns the address of the first miner   
         // Generally used for private blockchain
        function _coinbase () public view returns (address payable)
         {
        return block.coinbase;
         }

         // block.difficulty
         // It returns us the difficulty of the network, which is also useful
         // If required in the contract, we need to know the difficulty of the network
        function _difficulty () public view returns (uint)
         {
        return block.prevrandao;      
         }

         // block.gaslimit 
         // It returns the gas limit and the output is one uint
        function _gaslimit () public view returns (uint) 
        {
         return block.gaslimit;
        }

         // block.timestamp
         // This is very interesting and useful, it brings back the time of that moment
         // We use it and its use is very interesting, when time comes, it returns that moment to us in seconds.
         //1681247648 comes and shows the deploy inside the environment
         // This is the time now. I typed this word
         // So this returns the time
        function _timestamp () public view returns (uint)
         {
        return block.timestamp;
         }

         // now
         // This is the same as above, there is no difference 
         // It only works in version 5
        function _now () public view returns (uint)
        {
         // return now;  
        }

         // tx.origin
         // This is like msg.sender;
        function _origin () public view returns (address)
         {
        return tx.origin;
         }
}