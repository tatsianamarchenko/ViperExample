//
//  SavedModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class SavedModulePresenter: ViewToPresenterSavedModuleProtocol {

	// MARK: Properties
    var view: PresenterToViewSavedModuleProtocol?
    var interactor: PresenterToInteractorSavedModuleProtocol?
    var router: PresenterToRouterSavedModuleProtocol?

	func getSavedProducts() {
		interactor?.fetchsavedProducts()
	}

	func passToDelete(product: SavedObject) {
		interactor?.deliteFromCoreData(productToDelite: product)
	}

}

extension SavedModulePresenter: InteractorToPresenterSavedModuleProtocol {
	func returnSavedObjects(product: [SavedObject]) {
		view?.showSavedObjects(products: product)
	}

    
}
