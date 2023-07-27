import UIKit

//task1
enum Gender{
    case male
    case female
    case other
    func printself(){
        print(self)
    }
}
let userMale : Gender = .male
print(userMale)
let userFemale : Gender = .female
print(userFemale)
let userOther : Gender = .other
print(userOther)

struct Car{
    var make : String
    var model :String
    var year : Int
}

var mycarstruct1 : Car = Car (make : "Nissan" , model :"Leaf" , year : 2011)
print(mycarstruct1)
var mycarstruct2 : Car = Car (make : "Ford" , model :"Focus electric" , year : 2022)
print(mycarstruct2)
var mycarstruct3 : Car = Car (make : "Toyota" , model :" Rav4 Ev" , year : 2016)
print(mycarstruct3)

class Person {
    var name :String
    var age :Int
    var gender :Gender
    var car : Car
    init (name : String , age : Int , gender : Gender , car : Car ){
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.car = car;
    }
    func printPerson(){
        print(name , age, gender, car)
    }
}

var person1 = Person(name : "Afrah" , age : 23 , gender : .female , car : mycarstruct1 )
person1.printPerson()
var person2 = Person(name : "Faisal" , age : 40 , gender : .male , car : mycarstruct2 )
person2.printPerson()

//task 2
class BankAccount{
    var balance : Int
    init (balance :Int ){
        self.balance = balance;
    }
    func deposit(amount:Int){
        balance += amount
        print("deposit  \(amount) , current balance:  \(balance) " )
    }
    func withdraw(amount:Int){
        if ((balance - amount) >= 0)  {
            balance -= amount
            print("withdraw   \(amount) ,current balance: \(balance)" )
        }else
        {print ("insufficient balance , current balance is : \(balance)")
                }
    }
}

var accountFaisal = BankAccount(balance: 7000)
var accountAhmed = BankAccount(balance: 5000)
accountFaisal.deposit(amount: 200)
accountFaisal.withdraw(amount: 100)
accountAhmed.deposit(amount: 400)
accountAhmed.withdraw(amount: 300)

//tase 3
enum LoginError : Error{
    case invalidUsername
    case invalidPassword
}
func login (lengthusername : Int , lengthpassword  : Int) throws -> String{
    if lengthusername < 8 {
        print("length is less than 8")
        throw LoginError.invalidUsername
    }else if lengthusername > 15{
        print("length is greater than 15")
        throw LoginError.invalidUsername
    }
    if lengthpassword < 8 {
        print("length is less than 8")
        throw LoginError.invalidPassword
    }else if lengthpassword > 15{
        print("length is greater than 15")
        throw LoginError.invalidPassword
    }
    return "length is valid"
}
do{
    let passLength = try login(lengthusername : 5 , lengthpassword : 18)
    print(passLength)
}catch{
    print(error)
}







