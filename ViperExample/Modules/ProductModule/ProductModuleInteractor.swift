//
//  ProductModuleInteractor.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import CoreData

class ProductModuleInteractor: PresenterToInteractorProductModuleProtocol {

    // MARK: Properties
    var presenter: InteractorToPresenterProductModuleProtocol?

	var coreDataContext: CoreDataManager

	init(coreDataContext: CoreDataManager) {
		self.coreDataContext = coreDataContext
	}

	func saveProduct(product: Product) {
		
		let context = coreDataContext.persistentContainer.viewContext
		let savedObject = SavedObject(context: context)
		savedObject.title = product.name
		savedObject.microDescription = product.microDescription
		savedObject.productDescription = product.productDescription
		savedObject.url = product.htmlURL
		do {
			try context.save()
			presenter?.getSavigResult(result: "success")
		} catch {
			presenter?.getSavigResult(result: error.localizedDescription)
		}
	}

}
