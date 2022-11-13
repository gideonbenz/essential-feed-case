//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 12/02/22.
//

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
