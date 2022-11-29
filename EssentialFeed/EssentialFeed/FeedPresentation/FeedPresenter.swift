//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 06/05/22.
//

public final class FeedPresenter {
     public static var title: String {
        NSLocalizedString("FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view")
    }
    
    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
        FeedViewModel(feed: feed)
    }
}
