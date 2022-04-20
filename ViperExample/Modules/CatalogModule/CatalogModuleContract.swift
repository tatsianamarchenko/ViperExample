//
//  CatalogModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewCatalogModuleProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterCatalogModuleProtocol {
    
    var view: PresenterToViewCatalogModuleProtocol? { get set }
    var interactor: PresenterToInteractorCatalogModuleProtocol? { get set }
    var router: PresenterToRouterCatalogModuleProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorCatalogModuleProtocol {
    
    var presenter: InteractorToPresenterCatalogModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterCatalogModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterCatalogModuleProtocol {
    
}
