//
//  CategoryModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit

class CategoryModulePresenter: ViewToPresenterCategoryModuleProtocol {


	// MARK: Properties
	var view: PresenterToViewCategoryModuleProtocol?
	var interactor: PresenterToInteractorCategoryModuleProtocol?
	var router: PresenterToRouterCategoryModuleProtocol?

	func getCategories() {
		interactor?.getCategories()
	}

	func openSubcategory(category: String, view: UIViewController) {
		router?.openSubcategoryController(category: category, view: view)
	}

}

extension CategoryModulePresenter: InteractorToPresenterCategoryModuleProtocol {
	func returnSourceArray(titlesOfCategories: [String]) {
		view?.fillCategoriesTitlesArray(array: titlesOfCategories)
	}
}
