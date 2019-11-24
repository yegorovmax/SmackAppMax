//
//  ChannelsScreen.swift
//  Smack(10)UITests
//
//  Created by Maksim Egorov on 11/23/19.
//  Copyright © 2019 Max E. All rights reserved.
//

import XCTest

class ChannelsScreen: BaseScreen {

    private let channelsText: XCUIElement = app.staticTexts["CHANNELS"]
    private let userNameLoginButton: XCUIElement = app.buttons.element(matching: .button, identifier: "loginButtonUserName")
    private let smackBurgerButton: XCUIElement = app.buttons["smackBurger"]
    private let logOutButton: XCUIElement = app.buttons["Logout"]

    
    
    required init() {
        super.init()

        visible()
    }
    
    func tapUserNameLoginButton() {
        tap(userNameLoginButton)
    }
    
    func tapLogOutButton() {
        tap(logOutButton)
    }
    
    func tapSmackBurgerButton() -> ChannelsScreen {
        tap(smackBurgerButton)
        return ChannelsScreen()
    }

}

// MARK: - Visibility

extension ChannelsScreen {
    private func visible() {
        guard channelsText.waitForExistence(timeout: timeout) else {
            XCTFail("ChannelsScreen is not visible, cant find channelsText")
            return
        }
    }
}
