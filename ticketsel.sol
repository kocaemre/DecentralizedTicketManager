// SPDX-License-Identifier: GPL-3.0




pragma solidity >=0.8.1 <0.9.0;



contract ticketCreator{
    mapping(address => address) get_Contract;

    event contractCreated (address user,address contractAdress);

    // Function to create a new contract
    function create_contract() public returns(address){

        ticketseller new_ticketseller = new ticketseller(msg.sender);

        get_Contract[msg.sender] = address(new_ticketseller);

        return get_Contract[msg.sender];
    }
    // Function to see the created contract
    function seeContract() public view returns(address){
        return get_Contract[msg.sender];
    }

}





contract ticketseller{

    address public owner;

    mapping (address => uint) userBalances;

    mapping (address => string) orders; 

    mapping (uint => bool) public seatStatus; //if false,seat avaliable

    consertInformations public concert;

    bool private is_event_published;

    string private ticket_hash = "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";

    event concertCreated(string name,uint seat_numbers,uint price);

    event ticketCreated(address msg_sender,string hash_code);

    

    struct consertInformations{
        string name;
        uint seat_numbers;
        uint price;
    }

    constructor(address eoa){
        owner = eoa;

    }

    modifier onlyOwner{
        require(msg.sender == owner,"You are not owner");
        _;
    }

    function get_Balance() public view returns(uint) {
        return userBalances[msg.sender];
    }

    
    function get_Balance_global() public view onlyOwner returns (uint) {
        return address(this).balance;
    }

    function createconcert(string memory _name,uint _seat_numbers,uint _price) public onlyOwner {

        require(is_event_published==false,"Please reset the event");
        concert.name = _name;
        concert.seat_numbers = _seat_numbers;
        concert.price = _price;

        is_event_published = true;

        emit concertCreated(concert.name,concert.seat_numbers,concert.price);

    }

    function deposit() payable public{
        require(msg.value > 0);
        userBalances[msg.sender] += msg.value;
    }

    receive() payable external{
        deposit();
    }

    function withdraw(uint _money) public{
        require(userBalances[msg.sender] > _money && _money > 0,"You dont have money");
        address payable recipient = payable(msg.sender);
        uint money = _money;
        userBalances[msg.sender] -= money;

        recipient.transfer(money);
        
    }

    function buyTicket(uint seatNo) public returns(string memory){
        require(userBalances[msg.sender] >= concert.price);
        require(seatNo <= concert.seat_numbers && seatNo > 0,"Error code : 1");
        require(seatStatus[seatNo] == false,"Error code : 2");
        require(is_event_published == true,"Error code : 3");

        userBalances[msg.sender] -= concert.price;
        userBalances[owner] += concert.price;

        seatStatus[seatNo] = true;

        emit ticketCreated(msg.sender,ticket_hash);
        return ticket_hash;
    }

    function kioskMode(uint seatNo,address customer) public onlyOwner() returns(string memory){
        require(userBalances[customer] >= concert.price);
        require(seatNo <= concert.seat_numbers && seatNo > 0,"Error code : 1");
        require(seatStatus[seatNo] == false,"Error code : 2");
        require(is_event_published == true,"Error code : 3");

        userBalances[customer] -= concert.price;
        userBalances[owner] += concert.price;

        seatStatus[seatNo] = true;
        return ticket_hash;
    }

    function closeEvent() public onlyOwner{
        is_event_published = false;
    }




    

    

    











}
