//
//  lasagnaCookTests.swift
//  lasagnaCookTests
//
//  Created by Maulik Shah on 1/2/25.
//

import Testing
@testable import lasagnaCook



struct lasagnaCookTests {

    @Test func variableCheck(){
       #expect(makeSut().expectedMinutesInOven == 40)
    }
    
    @Test("Remaining Minutes")
    func remainingMUnitesInOven(){
        #expect(makeSut().remainingMinutesInOven(elapsedMinutes: 15) == 25)
    }
    
    @Test func remainingMUnitesLessthenone(){
        #expect(makeSut().remainingMinutesInOven(elapsedMinutes: 39) <= 1)
    }
    
    @Test func remainingMUnitesInOvenZero(){
        #expect(makeSut().remainingMinutesInOven(elapsedMinutes: 40) == 0)
    }
    
    @Test("Calculate the preparation time in minutes")
    func preparationTimeInMinutesMultipleofLayer(){
        #expect(makeSut().preparationTimeInMinutes(layers: 2) == 4)
    }
    
    @Test func preparationTimeInMinutesIsOneLayer(){
        #expect(makeSut().preparationTimeInMinutes(layers: 1) == 2)
    }
    
    @Test func preparationTimeInMinutesIsZeroLayer(){
        #expect(makeSut().preparationTimeInMinutes(layers: 0) == 0)
    }
 
    @Test("Calculate the total working time in minutes")
    func totalTimeInMinutes(){
        #expect(makeSut().totalTimeInMinutes(layers: 2, elapsedMinutes: 5) == 9)
    }
    
    @Test func totalTimeOneLayer(){
        #expect(makeSut().totalTimeInMinutes(layers: 1, elapsedMinutes: 25) == 27)
    }
    
    @Test func testTotalMinutesWhenLessThanOne(){
        #expect(makeSut().totalTimeInMinutes(layers: 0, elapsedMinutes: 0) == 0)
    }
    
    // helper
    func makeSut() -> Lasagna  {
        return Lasagna()
    }

}
