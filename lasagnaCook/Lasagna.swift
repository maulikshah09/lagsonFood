//
//  Lasagna.swift
//  lasagnaCook
//
//  Created by Maulik Shah on 1/2/25.
//

import Foundation

class Lasagna {
    var expectedMinutesInOven: Int = 40
    
    func remainingMinutesInOven(elapsedMinutes : Int) -> Int{
        max(expectedMinutesInOven - max(0, elapsedMinutes), 0)
    }

    func preparationTimeInMinutes(layers: Int) -> Int{
        max(layers,0) * 2
    }
    
    func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int{
        preparationTimeInMinutes(layers: layers) + max(0, elapsedMinutes)
    }
}
