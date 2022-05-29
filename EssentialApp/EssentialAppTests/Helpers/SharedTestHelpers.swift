//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Gideon Benz on 21/05/22.
//

import Foundation
import EssentialFeed

func anyURL() -> URL {
    return URL(string: "https://a-url.com")!
}

func anyNSError() -> Error {
    return NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func uniqueFeed() -> [FeedImage] {
    return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
}
