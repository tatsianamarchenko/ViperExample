//
//  ChoosedSubcategoriesModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewChoosedSubcategoriesModuleProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterChoosedSubcategoriesModuleProtocol {
    
    var view: PresenterToViewChoosedSubcategoriesModuleProtocol? { get set }
    var interactor: PresenterToInteractorChoosedSubcategoriesModuleProtocol? { get set }
    var router: PresenterToRouterChoosedSubcategoriesModuleProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorChoosedSubcategoriesModuleProtocol {
    
    var presenter: InteractorToPresenterChoosedSubcategoriesModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterChoosedSubcategoriesModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterChoosedSubcategoriesModuleProtocol {
    
}
