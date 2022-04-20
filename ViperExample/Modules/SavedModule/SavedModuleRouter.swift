//
//  SavedModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class SavedModuleRouter: PresenterToRouterSavedModuleProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = SavedModuleViewController()
        
        let presenter: ViewToPresenterSavedModuleProtocol & InteractorToPresenterSavedModuleProtocol = SavedModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = SavedModuleRouter()
        viewController.presenter?.view = viewController
		viewController.presenter?.interactor = SavedModuleInteractor(coreDataManager: CoreDataManager())
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
