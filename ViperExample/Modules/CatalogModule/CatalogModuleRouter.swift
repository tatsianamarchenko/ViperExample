//
//  CatalogModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class CatalogModuleRouter: PresenterToRouterCatalogModuleProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = CatalogModuleViewController()
        
        let presenter: ViewToPresenterCatalogModuleProtocol & InteractorToPresenterCatalogModuleProtocol = CatalogModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = CatalogModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = CatalogModuleInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}