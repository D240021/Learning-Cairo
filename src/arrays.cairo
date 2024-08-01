//Declare an array

fn arrayDeclaration() {
    let mut array1 = ArrayTrait::new(); //Without type declaration
    array1.append(0);
    array1.append(1);

    let mut array2 = ArrayTrait::<u128>::new(); //With type declaration
    let mut array3: ArrayTrait<u128> = ArrayTrait::new(); //Another type declaration

    let array4 = array![1,2,3,4,5]; //Declare a array with values
}

//Updating an array

fn updatingArray() {
    let mut array1: ArrayTrait<u128> = ArrayTrait::new();
    array1.append(10); //Add an element to array
    array1.append(8);
    array1.append(12);

    //You can only remove an element using the method pop_front(). This deleted the front element

    let first_value = a.pop_front().unwrap(); //Return the first element, 10
}

//We can't change the values of an array, only add elements o remove they

//Get elements of an array

//Using get() Method                            

fn getMethod() {
    let mut arr = ArrayTrait::<u128>::new(); //Declare an array
    arr.append(100); //Add an element
    let index_to_access = 1; // Index to access to value
    match arr.get(index_to_access) {
        Option::Some(x) => { //If finds the element, fill the body with your code
         *x.unbox() },
        Option::None => { panic!("out of bounds") } //If doesn't fin the element
    }
}

//Using at() Method

fn atMethod() {
    let mut a = ArrayTrait::new(); //Declare an array
    a.append(0); //Adding elements
    a.append(1); //Adding elements

    assert(*a.at(0) == 0, 'item mismatch on index 0');

    assert(*a[1] == 1, 'item mismatch on index 1');
}

//use at when you want to panic on out-of-bounds access attempts, 
//and use get when you prefer to handle such cases gracefully without panicking.

//Get the lenght of the array

fn getLenght()
{
    let mut arr = ArrayTrait::<u128>::new();
    let sizeArr = arr.len(); // Will return an usize value


    let empty = arr.is_empty(); //To check if the array it's empty. Return a boolean
}



