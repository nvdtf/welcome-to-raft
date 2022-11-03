# Welcome to Raft

## What is Raft?
Raft is a web application that uses FCL to run Cadence transactions and scripts from open-source GitHub repositories.

Raft aims to simplify sharing and composability on Flow by creating an effortless dapp delivery platform that uses open-source and blockchain as source-of-truth. Raft’s vision is to provide a platform that eliminates the need to create explicit  Frontend/Backend systems by delivering dapps to users directly from open-source GitHub repositories containing Cadence code.

## Usage
You can open any **public** repository by replacing `github.com` with `beta.raft.pub`

Raft is compatible with most Cadence repositories. Some repositories you can try:
* https://beta.raft.pub/emerald-dao/float
* https://beta.raft.pub/crash13override/flovatar
* https://beta.raft.pub/Flowtyio/lost-and-found
* https://beta.raft.pub/onflow/nft-storefront/
* https://beta.raft.pub/nvdtf/flow-contract-auditor-sample

### How can I make my repository compatible with Raft?
There is no explicit configuration needed. Please make sure deployment addresses are specified in the `flow.json` file.

## This Repository
As a demo, you can claim a special FLOAT through Raft!
* [scripts/get_event.cdc](scripts/get_event.cdc)
    Displays FLOAT event's data. For this example, you can pass the host address (`0xbf9acaa0b935d9cd`) and `698959814` as `eventId`.
* [scripts/has_claimed_event.cdc](scripts/has_claimed_event.cdc)
    Checks if the event has been claimed by given user. For this example, set the host address to `0xbf9acaa0b935d9cd` and `698959814` as `eventId`. Set `accountAddress` to your own account's address.
* [transactions/claim.cdc](transactions/claim.cdc)
    Claims FLOAT. For this FLOAT, set `eventId` to `698959814` and the host address to `0xbf9acaa0b935d9cd`. Leave the `secret` argument empty.

Note that this repository uses hard-coded import addresses, so it won't work on testnet.