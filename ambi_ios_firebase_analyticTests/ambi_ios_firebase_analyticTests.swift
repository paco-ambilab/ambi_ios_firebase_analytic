//
//  ambi_ios_firebase_analyticTests.swift
//  ambi_ios_firebase_analyticTests
//
//  Created by Paco on 14/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import XCTest
@testable import ambi_ios_firebase_analytic

class ambi_ios_firebase_analyticTests: XCTestCase {

    var loginViewController: LoginViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        loginViewController = LoginViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        loginViewController = nil
    }

    func testLoginViewController() {
        let value = "123"
        // when
        loginViewController.setTestVariable("123")
        // then
        XCTAssertEqual(loginViewController.testVariable, value)
        
        XCTAssertThrowsError(try FileManager.default.copyItem(at: nil!, to: nil!)) { (error) in
            
        }
        
        let expectation = XCTestExpectation(description: "Asynchronous")
        DispatchQueue.main.async {
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 20)
        
        let expectation1 = XCTestExpectation(description: "Asynchronous.expectedFulfillmentCount")
        expectation1.expectedFulfillmentCount = 2
        DispatchQueue.main.async {
            expectation1.fulfill()
            expectation1.fulfill()
        }
        
        wait(for: [expectation1], timeout: 10)
        
        testExample()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            testLoginViewController()
        }
    }

}
