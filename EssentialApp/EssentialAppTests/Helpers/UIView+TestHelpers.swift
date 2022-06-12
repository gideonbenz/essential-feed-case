//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Gideon Benz on 12/06/22.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
