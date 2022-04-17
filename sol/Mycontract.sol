pragma solidity ^0.8.0;

//smart contract is code that gets executed on the blockchain, people can access it, read and write data, execute any code inside of it

contract my1stContract {

    //set the value when deployed for the 1st time
    //use constructor function
    //called when my1stContract is INSTANTIATED created
    //######################## SET VALUE WHEN DEPLOYED
    constructor() public {
        // set VALUE
        value = "myValue";
    }


    //write a *VALUE* to declare data type of variable we want to store
    //is not a local variable
    //local variables disappear when called
    //this is where the data will get stored on the blockchain
    string value;

    //value is public.. anyone can set value in blockchain
    // tell function that you want to return string as well
    // can restrict visibility -- *view*
    //######################## READ VALUE FROM BLOCKCHAIN *GET*
    function getValue() public view returns (string){
        return value;
    }

    //value has * _ * to differentiate it self from the 1st value
    //value is public.. anyone can set value in blockchain
    // declared string(data type of the function argument) is defining the type of _value is being passed in
    //######################## CREATE THAT VALUE *SET*
    function set(string _value) public {
        value = _value;
        //^local variable
    }


}
