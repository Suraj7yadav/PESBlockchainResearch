pragma solidity ^0.4.17;

contract studentLottery {
    address public teacher;
    address[] public students;

    function studentLottery() public {
        teacher = msg.sender;
    }

    function enter() public payable {
        require(msg.value > .01 ether);

        students.push(msg.sender);
    }

    function random() private view returns (uint) {
        return uint(keccak256(block.difficulty, now, students));
    }

    function pickWinner() public restricted {
        uint index = random() % students.length;
        students[index].transfer(this.balance);
        students = new address[](0);
    }

    modifier restricted() {
        require(msg.sender == teacher);
        _;
    }

    function getstudents() public view returns (address[]) {
        return students;
    }
}