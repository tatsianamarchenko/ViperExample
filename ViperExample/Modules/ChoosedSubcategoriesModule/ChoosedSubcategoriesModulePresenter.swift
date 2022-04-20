//
//  ChoosedSubcategoriesModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class ChoosedSubcategoriesModulePresenter: ViewToPresenterChoosedSubcategoriesModuleProtocol {

	// MARK: Properties
	var view: PresenterToViewChoosedSubcategoriesModuleProtocol?
	var interactor: PresenterToInteractorChoosedSubcategoriesModuleProtocol?
	var router: PresenterToRouterChoosedSubcategoriesModuleProtocol?

	let category: String

	init(category: String) {
		self.category = category
	}

	func getSubcategories()  {
		interactor?.getSubcategories(categoryTitle: category)
	}

	func transitionToCatalog(subcategory: String, viewController: UIViewController) {
		router?.showCatalog(subcategory: subcategory, viewController: viewController)
	}
}

extension ChoosedSubcategoriesModulePresenter: InteractorToPresenterChoosedSubcategoriesModuleProtocol {
	func takeSubcategories(subcategories: [finalCategory]) {
		print(subcategories)
		view?.showSubcategories(subcategories: subcategories)
	}


}
