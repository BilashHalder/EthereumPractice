pragma solidity ^0.6.9;

contract RegUser{
    struct User{
        string fullName;
        uint mobNo;
        string idCard;
        string password;
        address useradd;
        string privateKey;
        address contractaddress;
 
    }
    
    
 mapping(string=>User) public userList; 
 
 function addUser(string memory _fullName,uint _mobNo,string memory _idCard,string memory _password,address _useradd,string memory _privateKey)public{
     User memory temp=User(_fullName,_mobNo,_idCard,_password,_useradd,_privateKey,0x0000000000000000000000000000000000000000);
     userList[_idCard]=temp;
 }
 
 
 function validUser(string memory _idCard)public view returns(bool){
    if(userList[_idCard].mobNo==0)
    return false;
    else
    return true;
 }
 
 
 function updateContractAddress(string memory _mobno,address _conadd)public {
     userList[_mobno].contractaddress=_conadd;
 }
 

}
 
 
 
 
 
    