//
//  File.swift
//  Login
//
//  Created by Karen Tsarukian on 13.02.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPersonInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobby: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInfo() -> Person {
        Person(
            name: "Karen",
            surname: "Tsarukyan",
            age: 30,
            hobby: "\n Спорт,\n книги,\n путешествия,\n игра на барабанах"
        )
    }
}
