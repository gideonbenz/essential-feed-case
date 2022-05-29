//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Gideon Benz on 26/05/22.
//

import EssentialFeed

final class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping ((FeedLoader.Result) -> Void)) {
        completion(result)
    }
}
