//
//  ProductModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class ProductModuleRouter: PresenterToRouterProductModuleProtocol {
    
    // MARK: Static methods
    static func createModule(product: Product) -> UIViewController {
        
        let viewController = ProductModuleViewController()
        
		let presenter: ViewToPresenterProductModuleProtocol & InteractorToPresenterProductModuleProtocol = ProductModulePresenter(product: product)
        
        viewController.presenter = presenter
        viewController.presenter?.router = ProductModuleRouter()
        viewController.presenter?.view = viewController
		viewController.presenter?.interactor = ProductModuleInteractor(coreDataContext: CoreDataManager())
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
