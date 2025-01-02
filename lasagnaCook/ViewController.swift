//
//  ViewController.swift
//  lasagnaCook
//
//  Created by Maulik Shah on 1/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
 
        let lasagna = Lasagna()

        let elapsedTime = 25
        let remainingTime = lasagna.remainingMinutesInOven(elapsedMinutes: elapsedTime)
        print("Remaining minutes in oven: \(remainingTime)")

        let layers = 3
        let prepTime = lasagna.preparationTimeInMinutes(layers: layers)
        print("Preparation time for \(layers) layers: \(prepTime) minutes")

        let totalTime = lasagna.totalTimeInMinutes(layers: layers, elapsedMinutes: elapsedTime)
        print("Total time (preparation + elapsed cooking): \(totalTime) minutes")
    }


}

