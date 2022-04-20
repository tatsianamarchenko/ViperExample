//
//  ProductModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewProductModuleProtocol {
	func showProduct(product: Product)

	func openInBrowser()
	func clicked(url: String)
	func showSavigResult(result: String)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterProductModuleProtocol {
    
    var view: PresenterToViewProductModuleProtocol? { get set }
    var interactor: PresenterToInteractorProductModuleProtocol? { get set }
    var router: PresenterToRouterProductModuleProtocol? { get set }
	
	func getProduct()
	func openInBrowser()
	func addProductForSaving()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorProductModuleProtocol {
    
    var presenter: InteractorToPresenterProductModuleProtocol? { get set }

	func saveProduct(product: Product)
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterProductModuleProtocol {
	func getSavigResult(result: String)
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterProductModuleProtocol {
    
}
