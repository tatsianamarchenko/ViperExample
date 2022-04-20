//
//  CategoryModuleRouter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class CategoryModuleRouter: PresenterToRouterCategoryModuleProtocol {

	// MARK: Static methods
	static func createModule() -> UIViewController {

		let viewController = CategoryModuleViewController()

		let presenter: ViewToPresenterCategoryModuleProtocol & InteractorToPresenterCategoryModuleProtocol = CategoryModulePresenter()

		viewController.presenter = presenter
		viewController.presenter?.router = CategoryModuleRouter()
		viewController.presenter?.view = viewController
		viewController.presenter?.interactor = CategoryModuleInteractor()
		viewController.presenter?.interactor?.presenter = presenter

		return viewController
	}

	func openSubcategoryController(category: String, view: UIViewController) {
		var vc = ChoosedSubcategoriesModuleRouter.createModule(category: category)
		view.navigationController?.pushViewController(vc, animated: true)
	}

}
