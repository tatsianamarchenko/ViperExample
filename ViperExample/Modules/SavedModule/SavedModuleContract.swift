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

	func showSavedObjects(products: [SavedObject])
	
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterSavedModuleProtocol {
    
    var view: PresenterToViewSavedModuleProtocol? { get set }
    var interactor: PresenterToInteractorSavedModuleProtocol? { get set }
    var router: PresenterToRouterSavedModuleProtocol? { get set }

	func getSavedProducts()
	func passToDelete(product: SavedObject)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorSavedModuleProtocol {
    
    var presenter: InteractorToPresenterSavedModuleProtocol? { get set }

	func fetchsavedProducts()

	func deliteFromCoreData(productToDelite: SavedObject)
	
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterSavedModuleProtocol {
	func returnSavedObjects(product: [SavedObject])
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterSavedModuleProtocol {
    
}
