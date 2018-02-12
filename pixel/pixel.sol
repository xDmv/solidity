
/*
commentary

@author ____ <___@___>
*/

pragma solidity ^0.4.19;


// contract from owner and from new owner
// реализация смены владельца контакта и создание модификатора для операция только для владельца
contract Bossowned {
    address public owner;                                // adress owner cmart-contract
    address public newOwner;                             // new adress owner cmart-contract

    uint[] public regionId;                              // ид региона + его координаты
    string[999999] public pixelcoordinat;                // координаты пикселей
    string[999999] public ownerpixel;                    // владелец конкретног

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

    function addRegion(uint x1, uint y1, uint x2, uint y2) public onlyOwner {
        uint ploshad;
        uint f;
        uint m;
        uint st;

  // проверяем свободны ли эти координаты
  // узнаем крайний левый угол будущего региона по формуле
        f = (y1-1)*1000 + (x1-1);
  // проверять будем простым перебором координат на наличие владельца
        r1 = new y2(length);
        r2 = new x2(length);
        for (uint i = y1; i < r1.length; i++) {
            for (uint j = x1; j < r2.length; j++) {
                m = f * i + j * 1000;
                if (ownerpixel[m] != "") {
                    ownerpixel[m] == "owner";
                } else {
                    break;
                }
                st++;
            }
            // считаем полощадь лота (количество пикселей на продажу)
            ploshad = (x2-x1)*(y2-y1);
            if (st < m) {
                for (uint i = 0; i < st+1; i++) {
                    ownerpixel[i] == "";
                }
            }
            
        }

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
