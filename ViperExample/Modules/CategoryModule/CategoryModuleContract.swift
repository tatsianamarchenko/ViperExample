//
//  CategoryModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewCategoryModuleProtocol {
	func fillCategoriesTitlesArray(array: [String])
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterCategoryModuleProtocol {

	var view: PresenterToViewCategoryModuleProtocol? { get set }
	var interactor: PresenterToInteractorCategoryModuleProtocol? { get set }
	var router: PresenterToRouterCategoryModuleProtocol? { get set }

	func getCategories()

	func openSubcategory(category: String, view: UIViewController)

}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorCategoryModuleProtocol {

	var presenter: InteractorToPresenterCategoryModuleProtocol? { get set }

	func getCategories()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterCategoryModuleProtocol {
	func returnSourceArray(titlesOfCategories: [String])
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterCategoryModuleProtocol {
	func openSubcategoryController(category: String, view: UIViewController)
}
