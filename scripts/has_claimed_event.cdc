import FLOAT from "FLOAT"

pub fun main(accountAddress: Address): FLOAT.TokenIdentifier? {
  // Raft FLOAT params
  let eventId: UInt64 = 698959814
  let hostAddress: Address = 0xbf9acaa0b935d9cd

  let floatEventCollection = getAccount(hostAddress).getCapability(FLOAT.FLOATEventsPublicPath)
                              .borrow<&FLOAT.FLOATEvents{FLOAT.FLOATEventsPublic}>()
                              ?? panic("Could not borrow the FLOAT Events Collection from the account.")
  let floatEventPublic = floatEventCollection.borrowPublicEventRef(eventId: eventId)

  return floatEventPublic!.hasClaimed(account: accountAddress)
}