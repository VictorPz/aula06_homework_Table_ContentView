//
//  Cars.swift
//  Aula06_Table_CollectionView_homework
//
//  Created by Victor Pizetta on 14/03/22.
//

import UIKit

struct Cars {
    
    let car: String
    let description: String
    var carImage: String
    
    init(car: String, description: String, carImage: String)  {
        self.car = car
        self.description = description
        self.carImage = carImage
    }
}
