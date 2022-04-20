//
//  CatalogModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class CatalogModuleRouter: PresenterToRouterCatalogModuleProtocol {

	// MARK: Static methods
	static func createModule(subcategory: String) -> UIViewController {

		let viewController = CatalogModuleViewController()

		let presenter: ViewToPresenterCatalogModuleProtocol & InteractorToPresenterCatalogModuleProtocol = CatalogModulePresenter(subcategory: subcategory)

		viewController.presenter = presenter
		viewController.presenter?.router = CatalogModuleRouter()
		viewController.presenter?.view = viewController
		viewController.presenter?.interactor = CatalogModuleInteractor()
		viewController.presenter?.interactor?.presenter = presenter
		viewController.presenter?.interactor?.apiService = ApiService()

		return viewController
	}

	func transitionToProduct(view: UIViewController, product: Product) {
		let vc = ProductModuleRouter.createModule(product: product)
		view.navigationController?.pushViewController(vc, animated: true)
	}

}
