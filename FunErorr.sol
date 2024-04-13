// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

error YOU_CONT_DO_THIS();
error COME_BACK_LATER();

contract FunctionANDError {
    

    // address zero = 0x0000000000000000000000000000000000000000

    mapping(address => uint256) user;

    function addInSide(address _userIf, uint256 _num) external payable {
        require(msg.value > 0, "you con't do this");
        user[_userIf] += _num;
    }


    function getAddInSide(address _address) public view returns (uint256) {
        if (_address == address(0)) {
            revert("you do not have much to do this");
        }
        return user[_address];
    }

    function pay(uint256 _amount) external {
        assert(user[msg.sender] >= _amount);

        user[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}