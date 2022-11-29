//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Gideon Benz on 06/05/22.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: .none)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
