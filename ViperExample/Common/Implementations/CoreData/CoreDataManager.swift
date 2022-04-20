//
//  CoreDataManager.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//

import Foundation
import CoreData

// MARK: - Core Data stack
class CoreDataManager {
	
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "ViperExample")
		container.loadPersistentStores(completionHandler: { (storeDescription, error) in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		})
		return container
	}()

	// MARK: - Core Data Saving support

	func saveContext () {
		let context = persistentContainer.viewContext
		if context.hasChanges {
			do {
				try context.save()
			} catch {
				let nserror = error as NSError
				fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
			}
		}
	}
}
