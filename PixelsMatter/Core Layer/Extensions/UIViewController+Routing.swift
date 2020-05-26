//
//  UIViewController+Routing.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import UIKit

extension UIViewController {
    static func listViewController() -> ListViewController {
        let controller = ListViewController(nibName: Constants.listViewXib, bundle: nil)
        let presenter = ListPresenter()
        controller.presenter = presenter
        presenter.view = controller
        return controller
    }
}
