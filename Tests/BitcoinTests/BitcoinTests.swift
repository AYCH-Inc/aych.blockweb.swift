//
//  BitcoinTests.swift
//  BitcoinTests
//
//  Created by Dmitry on 08/01/2019.
//  Copyright © 2019 Bankex Foundation. All rights reserved.
//

import XCTest
@testable import Bitcoin
@testable import CoreBlockchain

class BitcoinTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBalance() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let balance = try BitcoinAddress("1GVY5eZvtc5bA6EFEGnpqJeHUC5YaV5dsb")!.balance().wait()
        XCTAssert(balance >= 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
