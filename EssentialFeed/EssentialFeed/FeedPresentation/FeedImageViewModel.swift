//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 06/05/22.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
