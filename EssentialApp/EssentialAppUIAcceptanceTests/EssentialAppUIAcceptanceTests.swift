//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Gideon Benz on 04/06/22.
//

import XCTest

class EssentialAppUIAcceptanceTests: XCTestCase {
    
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(feedCells.count, 22)
        
        let firstImage = app.cells.matching(identifier: "feed-image-view").firstMatch
        XCTAssertTrue (firstImage.exists) //It could be a performance or network issue. That's why UI tests are so fragile - they can suddenly start failing unexpectedly, and it's hard to tell why.
    }
    
    func test_onLaunch_displaysCachedRemoteFeedWhenCustomerHasNoConnectivity() {
        let onlineApp = XCUIApplication()
        onlineApp.launch()
        
        let offlineApp = XCUIApplication()
        offlineApp.launchArguments = ["-connectivity", "offline"]
        offlineApp.launch()
        
        let cachedFeedCells = offlineApp.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(cachedFeedCells.count, 22)
        
        let firstCachedImage = offlineApp.cells.matching(identifier: "feed-image-view").firstMatch
        XCTAssertTrue (firstCachedImage.exists) //It could be a performance or network issue. That's why UI tests are so fragile - they can suddenly start failing unexpectedly, and it's hard to tell why.
    }
}
