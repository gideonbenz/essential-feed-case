//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 27/11/22.
//

public final class ImageCommentsPresenter {
    public static var title: String {
       NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
           tableName: "ImageComments",
           bundle: Bundle(for: Self.self),
           comment: "Title for the image comments view")
   }
}