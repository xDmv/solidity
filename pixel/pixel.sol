pragma solidity 0.4.20;


// contract from owner and from new owner
// реализация смены владельца контакта и создание модификатора для операция только для владельца
contract Bossowned {
    address public owner;                                // adress owner cmart-contract
    address public newOwner;                             // new adress owner cmart-contract

    function owned() public payable {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }

    function changeOwner(address _owner) public onlyOwner {
        require(_owner != 0);
        newOwner = _owner;
    }

    function confirmOwner() public {
        require(newOwner == msg.sender);
        owner = newOwner;
        delete newOwner;
    }
}

// contract first sale

contract Firstsale is Bossowned {
  

}


contract Secondsale is Bossowned {

}


// степ
contract Setup is Bossowned {

}


// апдейт
contract Update is Bossowned {

}


// Мерж (соединение)
contract Merge is Bossowned {

}


// Сплит (деление)
contract Split is Bossowned {

}
