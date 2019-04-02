pragma solidity ^0.4.24;

contract Auction {
    
    //address Auctioneer;

    struct Bid {
        address bidderAddress;
        uint amount; 
        string extraData;
        bool valid;
    }

    Bid[] public bids;

    constructor() public {

    }

    function getNumberOfBids()
    public
    view
    returns (uint numberOfBids) {
        return bids.length;
    }

    function getHighestBidID()
    public
    view
    returns (uint bidID) {
        require(bids.length > 0);

        uint highestAmount = 0;
        uint highestID = 0;
        for (uint i=0; i<bids.length; i++) {
            if (bids[i].amount > highestAmount) {
                highestAmount = bids[i].amount;
                highestID = i;
            }
        }
        return highestID;
    }

    function makeBid(string _extraData)
    external
    payable
    returns(uint bidIterator) {
        require(msg.value > 0);
        bids.push(Bid(msg.sender, msg.value, _extraData, true));

        return bids.length - 1;
    }

    function recallBid(uint bidIterator)
    external {
        require(bidIterator < bids.length, "Invalid bidIterator");
        require(msg.sender == bids[bidIterator].bidderAddress, "msg.sender != bidderAddress");
        require(bids[bidIterator].valid, "Bid is invalid; aborting");

        uint amountToSend = bids[bidIterator].amount;
        bids[bidIterator].amount = 0;
        bids[bidIterator].valid = false;
        bids[bidIterator].bidderAddress.transfer(amountToSend);
    }

    //REMOVE after development:
    function getBalance()
    external
    returns(uint balance){
        return address(this).balance;
    }
}
