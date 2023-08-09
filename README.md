# TicketCreator Smart Contract

This repository contains a Solidity smart contract named `TicketCreator` and its associated contracts. The `TicketCreator` contract allows users to create and manage ticket-selling contracts. Each user can create their own ticket-selling contract through this system.

## Smart Contracts

### `TicketCreator`

The main contract, `TicketCreator`, is used to create and manage ticket-selling contracts. It contains the following functionalities:

- Users can create their own ticket-selling contracts.

### `TicketSeller`

The `TicketSeller` contract is created for each user who wants to sell tickets. It includes the following features:

- Management of ticket sales and purchases.
- Storing concert information and event status.

## Prerequisites

- Solidity compiler version 0.8.1 or higher (but lower than 0.9.0)

## Usage

1. Clone this repository to your local machine.
2. Ensure you have the required Solidity compiler version installed.
3. Deploy the `TicketCreator` contract on a supported Ethereum network using your preferred method (e.g., Remix, Truffle, Hardhat).
4. Interact with the deployed `TicketCreator` contract to create and manage ticket-selling contracts.

## Example Workflow

1. Deploy the `TicketCreator` contract.
2. Use the `create_contract` function of the `TicketCreator` contract to create individual ticket-selling contracts.
3. Interact with the created ticket-selling contracts to manage ticket sales and purchases for specific events.

## License

This project is licensed under the [GPL-3.0 License](https://spdx.org/licenses/GPL-3.0.html).

