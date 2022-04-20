//
//  ChoosedSubcategoriesModuleInteractor.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class ChoosedSubcategoriesModuleInteractor: PresenterToInteractorChoosedSubcategoriesModuleProtocol {

	// MARK: Properties
	var presenter: InteractorToPresenterChoosedSubcategoriesModuleProtocol?

	func getSubcategories(categoryTitle: String) {
		let categories = CategorySource().categories.categories.filter {
			$0.categoryTitle == categoryTitle
		}

		var subcategories = [finalCategory]()
		for index in 0..<categories[0].subcategories.count {

			subcategories.append(categories[0].subcategories[index])
		}
		presenter?.takeSubcategories(subcategories: subcategories)
	}
}
