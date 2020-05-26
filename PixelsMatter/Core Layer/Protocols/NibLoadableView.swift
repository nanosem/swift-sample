//
//  NibLoadableView.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: Self.self)
    }
}
