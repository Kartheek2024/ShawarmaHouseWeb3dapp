# ShawarmaHouse Smart Contract

This is a Solidity smart contract for managing orders at ShawarmaHouse, a fictional restaurant. The contract allows customers to place orders and the owner to withdraw the balance from the contract.

## Contract Overview

The ShawarmaHouse contract includes the following features:

1. **Order Structure**: The contract defines a struct named `Order` to store order details, including `orderId`, `orderName`, `customer`, `time`, and `orderValue`.

2. **Order Events**: The contract emits an event `OrderAdded` whenever a new order is placed. This event contains the order ID, customer's address, timestamp, and order value.

3. **Place an Order**: Customers can place orders by calling the `buy` function. They need to provide the order name and the price in Ether as arguments to this function. The order details are stored in the `orders` array, and the `OrderAdded` event is emitted.

4. **Withdraw Balance**: Only the contract owner can withdraw the contract's balance by calling the `withdraw` function. The contract balance is transferred to the owner's address.

5. **Get Order Count**: The function `getOrderCount` allows anyone to get the total number of orders placed.

## Deploy Hardhat

To deploy the ShawarmaHouse contract, you can use the Hardhat framework.

Try running  following tasks:


```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
