//
//  CGPointTests.swift
//  EZSwiftExtensions
//
//  Created by Sanyal, Arunav on 10/29/16.
//  Copyright © 2016 Goktug Yilmaz. All rights reserved.
//

import XCTest

@testable import EZSwiftExtensions

class CGPointTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPlus() {
        let p1 = CGPoint(x: 1, y: 2)
        let p2 = CGPoint(x: 3, y: 4)
        
        XCTAssertEqual(p1 + p2, CGPoint(x: 4, y: 6))
        
        let p = CGPoint(x: 1, y: 1)
        let oppositeP = CGPoint(x: -1, y: -1)
        
        XCTAssertEqual(p + oppositeP, CGPoint(x: 0, y: 0))
    }
    
    func testDistance() {
        let p1 = CGPoint(x: 3, y: 4)
        let p2 = CGPoint(x: 0, y: 0)
        
        XCTAssertEqual(CGPoint.distance(from: p1, to: p2), 5)
        XCTAssertEqual(CGPoint.distance(from: p2, to: p2), 0)
    }
}
