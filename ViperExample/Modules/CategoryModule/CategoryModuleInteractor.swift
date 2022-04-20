//
//  CategoryModuleInteractor.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class CategoryModuleInteractor: PresenterToInteractorCategoryModuleProtocol {

	// MARK: Properties
	var presenter: InteractorToPresenterCategoryModuleProtocol?

	func getCategories() {
		let categories = CategorySource().categories.categories
		var titles = [String]()
		for index in 0..<categories.count {
			titles.append(categories[index].categoryTitle)
		}
		presenter?.returnSourceArray(titlesOfCategories: titles)
	}
}
