//
//  SavedModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewSavedModuleProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterSavedModuleProtocol {
    
    var view: PresenterToViewSavedModuleProtocol? { get set }
    var interactor: PresenterToInteractorSavedModuleProtocol? { get set }
    var router: PresenterToRouterSavedModuleProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorSavedModuleProtocol {
    
    var presenter: InteractorToPresenterSavedModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterSavedModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterSavedModuleProtocol {
    
}
