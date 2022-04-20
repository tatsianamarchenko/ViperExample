//
//  HomeDefaultRouter.swift
//  VIPER best practices
//
//  Created by Tibor Bödecs on 2019. 03. 05..
//

import Foundation
import UIKit

class HomeDefaultRouter {

    weak var presenter: HomePresenter?
    weak var viewController: UIViewController?
    
}

extension HomeDefaultRouter: HomeRouter {

    func getViewControllers() -> [UIViewController] {
        return [
			CategoryModuleRouter.createModule(),
			SavedModuleRouter.createModule()
        ].map { UINavigationController(rootViewController: $0) }
    }
}
