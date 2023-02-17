//
//  DataManager.swift
//  HW7
//
//  Created by Карина Чадаева on 16.02.23.
//
class DataManager {
    var names: [String] = ["John", "Mike", "Allan", "Leonardo", "Leonel", "Francisco", "Juan", "Mario", "Mark", "Anton"]
    var surnames: [String] = ["White", "Brown", "Williams", "Juanes", "Diaz", "Domingo", "Kinsley", "Sharp", "Lopez", "Antonov"]
    var emails: [String] = ["hhhhh@mail.ru", "dshjfdjk@mail.ru", "alllll@gmail.com", "sweet@mail.ru", "cande@yandex.ru", "dulce@mail.ru", "pancake@yandex.ru", "kiss@gmail.com", "sugarDad@gmail.com", "lalala@mail.ru"]
    var phoneNumbers: [String] = ["+7829238372", "+029837471", "+846923029344", "+82874659202", "+34728910874", "+747892013", "+99368294992", "+83274920202", "+8284048717", "+2238487782020"]
    
    static let share = DataManager()
    init() {}
}
