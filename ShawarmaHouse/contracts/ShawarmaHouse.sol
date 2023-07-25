// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ShawarmaHouse {
    address private owner;

    struct Order {
        uint orderId;
        string orderName;
        address customer;
        uint time;
        uint orderValue;
    }

    Order[] public orders;

    event OrderAdded(uint indexed Id, address  _customer, uint _time, uint _price);

    constructor() {
        owner = msg.sender;
    }

    function buy(string memory _orderName, uint _price) public payable  {
        Order memory order = Order(orders.length + 1, _orderName, msg.sender, block.timestamp, _price);
        orders.push(order);
        emit OrderAdded(orders.length + 1,msg.sender, block.timestamp, _price);
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success, "Withdrawal failed");
    }

    // Function to get the total number of orders
    function getOrderCount() public view returns (uint) {
        return orders.length;
    }
}
