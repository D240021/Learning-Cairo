                                              //Parameters

fn another_function(x: felt252) { //parameter named "x" of type felt252
    println!("The value of x is: {}", x);
}


fn print_labeled_measurement(value: u128, unit_label: ByteArray) { //a function with multiple params
    println!("The measurement is: {value}{unit_label}");
}

fn foo(x: u8, y: u8) {}




                                        //Statements and expressions

//Statments = performed some action and don't return a value
//Expressions = return a result value a doesn't includes a ";"

fn statementExample(){
    let y = 6; //-->Statement, perfomed an action but not return some value
}

fn expressionExample(){

    let y = {
        let x = 3;
        x + 1 //-->Expression
    };
}




                                        //Functions with a return value

//To declare a function with return value:

fn five() -> u32 { //We must declare the value type next to the arrow
    5 //It's a expression
}

fn plus_one_without_semicolon(x: u32) -> u32 {
    x + 1 //Right way, because it hasn't a semicolon therefore, it will return a value
}

// fn plus_one_with_semicolon(x: u32) -> u32 {
//     x + 1; //Wrong way, because it has a semicolon therefore, it will not return a value
// }                                     
                            
fn main(){
    // another_function(5);
    // print_labeled_measurement(5, "h");

    // let first_arg = 3;
    // let second_arg = 4;
    // foo(x: first_arg, y: second_arg); //Assing value to params in a clearly way
    // let x = 1;
    // let y = 2;
    // foo(:x, :y) //If the param and the variables hava the same name just put this syntax

    // let x = five(); //Assing the return value of "five" to "x" variable
    // println!("The value of x is: {}", x);

//     let x = plus_one_without_semicolon(5); //--> Right way

//     println!("The value of x is: {}", x);

//     let y = plus_one_with_semicolon(5); //--> Wrong way. It will throw a exception

//     println!("The value of x is: {}", y);
 }