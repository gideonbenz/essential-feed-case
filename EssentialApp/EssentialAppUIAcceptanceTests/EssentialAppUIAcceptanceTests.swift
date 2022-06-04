//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Gideon Benz on 04/06/22.
//

import XCTest

class EssentialAppUIAcceptanceTests: XCTestCase {
    
    func test_onLaunch_displayRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        XCTAssertEqual(app.cells.count, 22)
        XCTAssertEqual(app.cells.firstMatch.images.count, 1) //It could be a performance or network issue. That's why UI tests are so fragile - they can suddenly start failing unexpectedly, and it's hard to tell why.
    }
}
