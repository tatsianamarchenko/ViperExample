//
//  CatalogModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewCatalogModuleProtocol {
	func showCategoryProducts(products: [Product])
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterCatalogModuleProtocol {

	var view: PresenterToViewCatalogModuleProtocol? { get set }
	var interactor: PresenterToInteractorCatalogModuleProtocol? { get set }
	var router: PresenterToRouterCatalogModuleProtocol? { get set }

	func update()
	func transitionToProduct(view: UIViewController, product: Product)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorCatalogModuleProtocol {

	var presenter: InteractorToPresenterCatalogModuleProtocol? { get set }

	var apiService: ApiService? { get set }

	func loadData(category: String)
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterCatalogModuleProtocol {
	func showLoadedData(products: [Product])
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterCatalogModuleProtocol {
	
	func transitionToProduct(view: UIViewController, product: Product)
	
}
