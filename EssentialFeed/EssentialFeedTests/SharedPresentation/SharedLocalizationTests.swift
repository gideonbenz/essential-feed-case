//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Gideon Benz on 27/11/22.
//

import EssentialFeed
import XCTest

final class SharedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
    private final class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
}
