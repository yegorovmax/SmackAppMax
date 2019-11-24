//
//  Session.swift
//  Smack(10)UITests
//
//  Created by Maksim Egorov on 11/23/19.
//  Copyright © 2019 Max E. All rights reserved.
//

import Foundation

class Session {
    static var shared: Session = .init()

    var restaurants: [Restaurant] = [
        Restaurant(identifier: 123,
                   name: "Boris Bakery",
                   address: "1550 N El Centro ave, LA, CA",
                   imagePath: "http://hauteliving.com/wp-content/uploads/2014/11/Hakkasan-sf_bar.jpg",
                   phone: "13236756880",
                   longitude: "123.456",
                   latitude: "654.321"),
        Restaurant(identifier: 124,
                   name: "Igor Bakery",
                   address: "123 My Street, LA, CA",
                   imagePath: "http://hauteliving.com/wp-content/uploads/2014/11/Hakkasan-sf_bar.jpg",
                   phone: "2222222222",
                   longitude: "123.456",
                   latitude: "654.321")
    ]
    
    var menuCategory: [MenuCategory] = [
        MenuCategory(categoryId: 1,
                     categoryName: "Deserts",
                     placeID: 123),
        MenuCategory(categoryId: 2,
                     categoryName: "Salads",
                     placeID: 123)
    ]

    var dish: [Dish] = [
        Dish(categoryId: 1,
             dishPrice: 3.5,
             dishId: 1,
             dishName: "Carrot Cake",
             dishDescription: "Freshly made."),
         Dish(categoryId: 1,
              dishPrice: 4.5,
              dishId: 2,
              dishName: "Tiramisu",
              dishDescription: "Original Italian recipe."),
        Dish(categoryId: 2,
             dishPrice: 10,
             dishId: 3,
             dishName: "Summer salad",
             dishDescription: "Fresh veggies from farmers market."),
        Dish(categoryId: 2,
             dishPrice: 15.5,
             dishId: 4,
             dishName: "Greek salad",
             dishDescription: "Just perfect.")
    ]
    
    private init() {}
}

struct Restaurant {
    var identifier: Int
    var name: String
    var address: String
    var imagePath: String
    var phone: String
    var longitude: String
    var latitude: String
}

struct MenuCategory {
    var categoryId: Int
    var categoryName: String
    var placeID: Int
}

struct Dish {
    var categoryId: Int
    var dishPrice: Double
    var dishId: Int
    var dishName: String
    var dishDescription: String
}
