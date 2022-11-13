//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 12/11/22.
//

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
