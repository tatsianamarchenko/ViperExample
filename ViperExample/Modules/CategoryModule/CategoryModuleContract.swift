//
//  CategoryModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewCategoryModuleProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterCategoryModuleProtocol {
    
    var view: PresenterToViewCategoryModuleProtocol? { get set }
    var interactor: PresenterToInteractorCategoryModuleProtocol? { get set }
    var router: PresenterToRouterCategoryModuleProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorCategoryModuleProtocol {
    
    var presenter: InteractorToPresenterCategoryModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterCategoryModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterCategoryModuleProtocol {
    
}
