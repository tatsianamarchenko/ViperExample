//
//  ChoosedSubcategoriesModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewChoosedSubcategoriesModuleProtocol {
	func showSubcategories(subcategories: [finalCategory])
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterChoosedSubcategoriesModuleProtocol {

	var view: PresenterToViewChoosedSubcategoriesModuleProtocol? { get set }
	var interactor: PresenterToInteractorChoosedSubcategoriesModuleProtocol? { get set }
	var router: PresenterToRouterChoosedSubcategoriesModuleProtocol? { get set }
	func getSubcategories()
	func transitionToCatalog(subcategory: String, viewController: UIViewController)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorChoosedSubcategoriesModuleProtocol {

	var presenter: InteractorToPresenterChoosedSubcategoriesModuleProtocol? { get set }

	func getSubcategories(categoryTitle: String)
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterChoosedSubcategoriesModuleProtocol {
	func takeSubcategories(subcategories: [finalCategory])
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterChoosedSubcategoriesModuleProtocol {
	func showCatalog(subcategory: String, viewController: UIViewController)
}
