const CONST_VARIABLE_ONE : u32 = 3600; //Upper case for standard



//                                 VARIABLES MUTABILITY 

// fn incorrectVariablesMutability(){

//     let x = 5; //Declare a NOT mutable variable

//     println!("The value of x is {}",x);

//     x = 6; //Trying to reassign variable value

//     println!("The value of x is {}",x);

//     //Error by compiler: Cannot assign to an immutable variable.
// }


// fn correctVariablesMutability(){

//     let mut x = 5; //Declare a mutable variable

//     println!("The value of x is {}",x);

//     x = 6; //Trying to reassign variable value xd

//     println!("The value of x is {}",x);

//     //Error: Any one, because the x value is mutable.

// }

//                                VARIABLES MUTABILITY 


//                                SHADOWING



    fn shadowing(){
        let x = 5;
        let x = x + 1; //Shadowing the previous "x" variable
        { //Open a new local scope, outside of these keys it will not exist
            let x = x * 2; //Shading the previous "x" variable locally
            println!("Inner scope x value is: {}",x);
        };
        println!("Outer scope x value is: {}",x);
    }


    //If a variable is declared untyped, the type felt252 is automatically assigned

    //The difference between mutable variables and shadowing is that shadowing is a fully variable
    //different, whose value is not mutable. And it will give compile error if your error tries to be changed
    //In addition, with shading there will be no problem if the data type is changed, unlike mutable variables
    //what if they expect the same type of data.



//                                SHADOWING

    fn main(){

        //---------------------Variables mutability-----------------------------//
        // incorrectVariablesMutability(); -->ERROR                             //
        // correctVariablesMutability(); -->CORRECT WAY                         //
        //----------------------------------------------------------------------//

        //---------------------Shadowing-----------------------------------------//
        //   shadowing();                                                       //
        //---------------------------------------------------------------------//


    }