// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title OwnableExample
 * @dev Demonstrates ownership, access control, and example functions
 */
contract OwnableExample {

    // Current owner of the contract
    address public owner;

    // Emitted when ownership is transferred
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    // Example state variable
    uint256 public storedValue;

    /**
     * @dev Set deployer as owner
     */
    constructor() {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), msg.sender);
    }

    /**
     * @dev Restrict function access to owner only
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner!");
        _;
    }

    /**
     * @dev Transfer ownership to a new address
     * @param newOwner Address of new owner
     */
    function setOwner(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid address!");
        
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    /**
     * @dev Function only the owner can access
     */
    function onlyOwnerCanAccess() public onlyOwner {
        // Add your restricted logic here
        storedValue += 1; // Example logic
    }

    /**
     * @dev Function anyone can access
     */
    function anyOneCanAccess() public {
        // Example open logic
        storedValue += 10;
    }

    /**
     * @dev Get stored value
     */
    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }
}
