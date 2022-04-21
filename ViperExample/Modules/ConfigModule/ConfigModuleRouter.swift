//
//  ConfigModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 21.04.22.
//  
//

import Foundation
import UIKit

class ConfigModuleRouter: PresenterToRouterConfigModuleProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ConfigModuleViewController()
        
        let presenter: ViewToPresenterConfigModuleProtocol & InteractorToPresenterConfigModuleProtocol = ConfigModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ConfigModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ConfigModuleInteractor()
        viewController.presenter?.interactor?.presenter = presenter
		viewController.presenter?.setupViewControllers()
        return viewController
    }

	func getViewControllers() -> [UIViewController] {
		return [
			CategoryModuleRouter.createModule(),
			SavedModuleRouter.createModule()
		].map { UINavigationController(rootViewController: $0) }
	}

}
