func downloadImage(atURL url: String) -> (Bool, String) {
    // TODO: Download image
    // if no error, return true
    // otherwise, get error string and return false
    let error = "Image no longer exists"
    return (false, error)
}

let result = downloadImage(atURL: "http://example.com/image.png")
result.0
result.1
print("Success? \(result.0)")
print("Message: \(result.1)")

let person = (name: "Jim", age: 30)
person.age
person.name
print("\(person.name)'s age is \(person.age)")

var person2 = (name: "Jim", age: 30)
print("\(person2.name)'s age is \(person2.age)")
person2.age = 32
print("\(person2.name)'s age is \(person2.age)")


    // The above does not work becuase the function is supposed to return a BOOL, but it is returning a String, and that's no bueno. Really, we need to be able to return TWO values from this function, one of type BOOL, indicating success or failure of the function, and the other of type String, a message indicating why the function failed. BUT HOW?

// You want to have two values that are treated as one, so you want to return a tuple Here's How in Swift:

let point1: (Int, Int) = (1, 2)

// Put the type of each of tuple's parts in parentheses, separated by commas. In english: Point1 is a tuple consisting of two Ints.

// Here is a tuple consisting of a Boolean and a String.


let x: (Bool, String) = (false, "Image no longer exists at URL")

// X is a tuple consisting of a bool and a string. Knowing this, let's re-write the previous function so that it returns a tuple instead of a Bool:

func downloadImage(atURL url: String) -> (Bool, String) {
    // TO DO: Download image
    // if no error, return true
    // otherwise, get error string and return false
    let error = "Image no longer exists."
    return(false, error)
    
}


// Great now how do you access the elements of a Tuple //


// Say you wrote some code to call the downloadImage(at URL:) function and saved it in a variable :

let result = downloadImage(atURL: "http://example.com/image.png")
print("Success? \(result.0)")
// prints Success? False
print("Message: \(result.1)")
// prints "Message: Image no longer exists"





//Naming Elements //

// Since result.0 and result.1 don't tell you much abou tthe elements of the tuple, it might be hard to remember which value is in which position. You can also name the elements of a tuple. You give them names when you create the tuple:

let person = (name: "Jim", age: 30)

// Now you can access the individual parts of the tuple by their names (name and age) instead of using numbered fields.

person.age
person.name


// Now you can access individual parts of the tuple in a much more readable way:

let person1 = (name: "Jim", age: 30)
print("\(person.name)'s age is \(person.age)")



// Changing Values //


// Say you created this tuple:

var person2 = (name: "Jim", age:30)
print("\(person2.name)'s age is \(person2.age)")

person2.age = 32
print("\(person2.name)'s age is \(person2.age)")


// But actually Jim is 32, so we need to change Jim's age.


//Tuples are great for iterating over dictionaries.
// Dictionaries are data structures that associate a key with a value and when iterating over a dictionary, you get back a tuple describing the key/value pair.



