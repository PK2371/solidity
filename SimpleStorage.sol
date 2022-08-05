pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 transactionid;

    struct User {
        uint256 transactionid;
        string name;
    }

    User[] public user;
    mapping(string => uint256) public nameToTransactionid;

    function store(uint256 _transactionid) public {
        transactionid = _transactionid;
    }

    function retrieve() public view returns (uint256) {
        return transactionid;
    }

    function addUser(string memory _name, uint256 _transactionid) public {
        user.push(User(_transactionid, _name));
        nameToTransactionid[_name] = _transactionid;
    }
}
