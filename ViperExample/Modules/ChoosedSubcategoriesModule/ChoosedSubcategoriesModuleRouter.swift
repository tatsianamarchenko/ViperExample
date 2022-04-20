//
//  ChoosedSubcategoriesModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class ChoosedSubcategoriesModuleRouter: PresenterToRouterChoosedSubcategoriesModuleProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ChoosedSubcategoriesModuleViewController()
        
        let presenter: ViewToPresenterChoosedSubcategoriesModuleProtocol & InteractorToPresenterChoosedSubcategoriesModuleProtocol = ChoosedSubcategoriesModulePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ChoosedSubcategoriesModuleRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ChoosedSubcategoriesModuleInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
