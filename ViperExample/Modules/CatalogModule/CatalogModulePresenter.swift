//
//  CatalogModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class CatalogModulePresenter: ViewToPresenterCatalogModuleProtocol {

	// MARK: Properties
	var view: PresenterToViewCatalogModuleProtocol?
	var interactor: PresenterToInteractorCatalogModuleProtocol?
	var router: PresenterToRouterCatalogModuleProtocol?
	var subcategory: String
	init(subcategory: String) {
		self.subcategory = subcategory
	}
	func update() {
		interactor?.loadData(category: subcategory)
	}

}

extension CatalogModulePresenter: InteractorToPresenterCatalogModuleProtocol {
	func showLoadedData(products: [Product]) {
		view?.showCategoryProducts()
	}
}
