//
//  SavedModuleInteractor.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation
import CoreData

class SavedModuleInteractor: PresenterToInteractorSavedModuleProtocol {

	// MARK: Properties
	var presenter: InteractorToPresenterSavedModuleProtocol?
	var coreDataManager: CoreDataManager

	init(coreDataManager: CoreDataManager) {
		self.coreDataManager = coreDataManager
	}

	func fetchsavedProducts() {
		do {
			let request = SavedObject.fetchRequest() as NSFetchRequest<SavedObject>
			let savedObjects = try coreDataManager.persistentContainer.viewContext.fetch(request)
			presenter?.returnSavedObjects(product: savedObjects)
		} catch  {
			print(error)
		}
	}

	func deliteFromCoreData(productToDelite: SavedObject) {

		self.coreDataManager.persistentContainer.viewContext.delete(productToDelite)
		do {
			try self.coreDataManager.persistentContainer.viewContext.save()
			self.fetchsavedProducts()
		} catch  {
			print(error)
		}
	}
}
