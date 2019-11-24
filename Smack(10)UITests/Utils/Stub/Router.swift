//
//  Router.swift
//  Smack(10)UITests
//
//  Created by Maksim Egorov on 11/23/19.
//  Copyright © 2019 Max E. All rights reserved.
//

import Embassy
import EnvoyAmbassador
import Foundation

class OrderMeRouter: Router {

    private enum Endpoint {
        static let places = "/places"
        static let menu = "/menu/123"
    }

    let session: Session = .shared

    override init() {
        super.init()

        setupPlacesRoutes()
        setupMenuRoutes()
    }

    private func setupPlacesRoutes() {
        self[Endpoint.places] = JSONResponse { _ -> Any in
            return [
                ["address": self.session.restaurants[0].address,
                 "name": self.session.restaurants[0].name,
                 "id": self.session.restaurants[0].identifier,
                 "imagePath": self.session.restaurants[0].imagePath,
                 "phone": self.session.restaurants[0].phone,
                 "longitude": self.session.restaurants[0].longitude,
                 "latitude": self.session.restaurants[0].latitude
                ],
                ["address": self.session.restaurants[1].address,
                 "name": self.session.restaurants[1].name,
                 "id": self.session.restaurants[1].identifier,
                 "imagePath": self.session.restaurants[1].imagePath,
                 "phone": self.session.restaurants[1].phone,
                 "longitude": self.session.restaurants[1].longitude,
                 "latitude": self.session.restaurants[1].latitude
                ]
            ]
        }
    }
    
    private func setupMenuRoutes() {
        self[Endpoint.menu] = JSONResponse { _ -> Any in
        return [
            "categories": [
                [
                    "id": self.session.menuCategory[0].categoryId,
                    "name": self.session.menuCategory[0].categoryName,
                    "placeId": self.session.menuCategory[0].placeID
                ],
                [
                    "id": self.session.menuCategory[1].categoryId,
                    "name": self.session.menuCategory[1].categoryName,
                    "placeId": self.session.menuCategory[1].placeID
                ]
            ],
            "dishes": [
                [
                    "categoryId": self.session.dish[0].categoryId,
                    "price": self.session.dish[0].dishPrice,
                    "id": self.session.dish[0].dishId,
                    "name": self.session.dish[0].dishName,
                    "description": self.session.dish[0].dishDescription
                ],
                [
                    "categoryId": self.session.dish[1].categoryId,
                    "price": self.session.dish[1].dishPrice,
                    "id": self.session.dish[1].dishId,
                    "name": self.session.dish[1].dishName,
                    "description": self.session.dish[1].dishDescription
                ],
                [
                    "categoryId": self.session.dish[2].categoryId,
                    "price": self.session.dish[2].dishPrice,
                    "id": self.session.dish[2].dishId,
                    "name": self.session.dish[2].dishName,
                    "description": self.session.dish[2].dishDescription
                ],
                [
                    "categoryId": self.session.dish[3].categoryId,
                    "price": self.session.dish[3].dishPrice,
                    "id": self.session.dish[3].dishId,
                    "name": self.session.dish[3].dishName,
                    "description": self.session.dish[3].dishDescription
                ]
                
            ]
        ]
        }
    }
}
