//
//  ProductModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class ProductModulePresenter: ViewToPresenterProductModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewProductModuleProtocol?
    var interactor: PresenterToInteractorProductModuleProtocol?
    var router: PresenterToRouterProductModuleProtocol?

	var product: Product

	init(product: Product) {
		self.product = product
	}

	func getProduct() {
		view?.showProduct(product: product)
	}

	func openInBrowser() {
		view?.clicked(url: product.htmlURL)
	}
}

extension ProductModulePresenter: InteractorToPresenterProductModuleProtocol {
    
}
