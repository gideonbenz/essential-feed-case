//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Gideon Benz on 03/05/22.
//

import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    private final class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
         FeedPresenter.title
    }
}
