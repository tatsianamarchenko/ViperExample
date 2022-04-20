//
//  ChoosedSubcategoriesModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class ChoosedSubcategoriesModuleRouter: PresenterToRouterChoosedSubcategoriesModuleProtocol {

	// MARK: Static methods
	static func createModule(category: String) -> UIViewController {

		let viewController = ChoosedSubcategoriesModuleViewController()

		let presenter: ViewToPresenterChoosedSubcategoriesModuleProtocol & InteractorToPresenterChoosedSubcategoriesModuleProtocol = ChoosedSubcategoriesModulePresenter(category: category)

		viewController.presenter = presenter
		viewController.presenter?.router = ChoosedSubcategoriesModuleRouter()
		viewController.presenter?.view = viewController
		viewController.presenter?.interactor = ChoosedSubcategoriesModuleInteractor()
		viewController.presenter?.interactor?.presenter = presenter

		return viewController
	}

	func showCatalog(subcategory: String, viewController: UIViewController) {
		let vc = CatalogModuleRouter.createModule(subcategory: subcategory)
		viewController.navigationController?.pushViewController(vc, animated: true)
	}


}
