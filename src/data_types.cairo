                                                //Scalar types

//Is a single value. Primary: felts, integers and booleans.

                                                //Felt type example

    let feltVariable1  = 25; //Is type felt256 by default
    let feltvariable2 : felt252 = 25; //Explicitly declared a variable felt252

//Felt252 is a integer type 


                                                //Integer type example

//There is diferent types of integer declarations. That depends of bits amount

let small_number : u8 = 255; //--> 8 bits
let medium_number: u16 = 65535; //--> 16 bits
let large_number: u32 = 4294967295; //--> 32 bits
let very_large_number: u64 = 18446744073709551615; //-->64 bits
let huge_number: u128 = 340282366920938463463374607431768211455; //-->128 bits
let enormous_number: u256 = u256 { low: 170141183460469231731687303715884105727, 
    high: 170141183460469231731687303715884105727 }; //-->256 bits
let index: usize = 1000; //-->This type by default declares int u32 size





                                                //Math operations symbols

//Addition --> +
//Substraction --> -
//Multiplication  --> *
//Divition --> /
//Remainder --> %


                                                //Boolean type example

//It's simple, only can be true or false

let boolTrue = true; //Implicit declaration
let boolFalse : bool = false; //Explicit declaration


                                                //String types

//Short string

//We can represent a short string with '' or hexadecimal value

let my_first_char = 'C';
let my_first_char_in_hex = 0x43;

//Byte Array Strings

//We can represent it by double quotes 

let long_string: ByteArray = "This is a string which has more than 31 characters";


                                                //Compound types

                                                //Tuple. 

//It can be declared like:

let tup: (u32, u64, bool) = (10, 20, true); //First declared his types and next his values

//The tuple can't change his length once declared

//We can access to his values like this:

fn accesTupleTypes(){

    let tup = (500, 6, true);

    let (x, y, z) = tup; //Declare a variable to reach the tup values. This is called destructuring

    if y == 6 {
        println!("y is 6!");
    }
}

                                               //Fixed size array

//This is another collection, but unlike the tuple we must declare it with the same type

let arr1: [u64; 5] = [1, 2, 3, 4, 5];

//Like a tuple, this fixed size array can't change his length

//We can initiliaze an array with the same value for each element, like this:

let arr2 = [3; 5];

//arr2 will contain  [3,3,3,3,3] values

                                              //Access to fixed size array values

//1.Using destructuring (previously seen)

//2.Convert array to a Span, this allow us indexing. Like this:


fn accessArrayValueSpan(){

    let my_arr = [1, 2, 3, 4, 5];

    let my_span = my_arr.span();
    println!("my_span[2]: {}", my_span[2]); // my_span[2]: 3
}


                                            //Type convertion

//"into" allow us convert a variable type into another 

fn convertTypes(){

    let my_u8: u8 = 10;
    let my_u16: u16 = my_u8.into(); // u8 --> u16
    let my_u32: u32 = my_u16.into(); // u16 --> u32
    let my_u64: u64 = my_u32.into(); // u32 --> u64
    let my_u128: u128 = my_u64.into(); // 64 --> u128

    let my_felt252 = 10;
    // As a felt252 is smaller than a u256, we can use the into() method
    let my_u256: u256 = my_felt252.into();
    let my_other_felt252: felt252 = my_u8.into();
    let my_third_felt252: felt252 = my_u16.into();

}

//"try_Into" is used for failable conversions


fn tryConvertTypes(){
    let my_u256: u256 = 10;

    // Since a u256 might not fit in a felt252, we need to unwrap the Option<T> type
    let my_felt252: felt252 = my_u256.try_into().unwrap();
    let my_u128: u128 = my_felt252.try_into().unwrap();
    let my_u64: u64 = my_u128.try_into().unwrap();
    let my_u32: u32 = my_u64.try_into().unwrap();
    let my_u16: u16 = my_u32.try_into().unwrap();
    let my_u8: u8 = my_u16.try_into().unwrap();

    let my_large_u16: u16 = 2048;
    let my_large_u8: u8 = my_large_u16.try_into().unwrap(); // panics with 'Option::unwrap failed.'
}

                            



