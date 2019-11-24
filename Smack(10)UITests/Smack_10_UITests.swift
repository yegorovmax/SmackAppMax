//
//  Smack_10_UITests.swift
//  Smack(10)UITests
//
//  Created by Maksim Egorov on 11/23/19.
//  Copyright © 2019 Maksim Egorov. All rights reserved.
//

import XCTest

class Smack_10_UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        
        let app2 = app
        _ = app2
        app.buttons["smackBurger"].tap()
        app.buttons["Login"].tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Don't have an account? Sign up here"]/*[[".buttons[\"Don't have an account? Sign up here\"].staticTexts[\"Don't have an account? Sign up here\"]",".staticTexts[\"Don't have an account? Sign up here\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["username"].tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Continue"]/*[[".otherElements[\"UIContinuousPathIntroductionView\"]",".buttons[\"Continue\"].staticTexts[\"Continue\"]",".staticTexts[\"Continue\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let shiftButton = app2/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards.buttons[\"shift\"]",".buttons[\"shift\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        shiftButton.tap()
        shiftButton.tap()
        
        let aKey = app2/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        aKey.tap()
        aKey.tap()
        
        let moreKey = app2/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey.tap()
        moreKey.tap()
        
        let key = app2/*@START_MENU_TOKEN@*/.keys["@"]/*[[".keyboards.keys[\"@\"]",".keys[\"@\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        key.tap()
        
        let moreKey2 = app2/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"letters\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey2.tap()
        moreKey2.tap()
        aKey.tap()
        aKey.tap()
        moreKey.tap()
        moreKey.tap()
        
        let key2 = app2/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        moreKey2.tap()
        moreKey2.tap()
        aKey.tap()
        aKey.tap()
        
        let emailTextField = app.textFields["email"]
        emailTextField.tap()
        emailTextField.tap()
        aKey.tap()
        aKey.tap()
        moreKey.tap()
        moreKey.tap()
        key.tap()
        key.tap()
        moreKey2.tap()
        moreKey2.tap()
        aKey.tap()
        moreKey.tap()
        moreKey.tap()
        key2.tap()
        key2.tap()
        moreKey2.tap()
        moreKey2.tap()
        aKey.tap()
        aKey.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.secureTextFields["password"].tap()
        moreKey.tap()
        moreKey.tap()
        
        let key3 = app2/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key3.tap()
        app2/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let key4 = app2/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        key4.tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Choose avatar"]/*[[".buttons[\"Choose avatar\"].staticTexts[\"Choose avatar\"]",".staticTexts[\"Choose avatar\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.collectionViews.children(matching: .cell).element(boundBy: 18).children(matching: .other).element.tap()
        
        let generateBackgraundColorStaticText = app2/*@START_MENU_TOKEN@*/.staticTexts["Generate backgraund color"]/*[[".buttons[\"Generate backgraund color\"].staticTexts[\"Generate backgraund color\"]",".staticTexts[\"Generate backgraund color\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        generateBackgraundColorStaticText.tap()
        generateBackgraundColorStaticText.tap()
        generateBackgraundColorStaticText.tap()
        generateBackgraundColorStaticText.tap()
        generateBackgraundColorStaticText.tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Create Account"]/*[[".buttons[\"Create Account\"].staticTexts[\"Create Account\"]",".staticTexts[\"Create Account\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
