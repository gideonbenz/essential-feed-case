//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 06/05/22.
//

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
