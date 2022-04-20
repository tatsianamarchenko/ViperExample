//
//  CatalogModuleInteractor.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation


class CatalogModuleInteractor: PresenterToInteractorCatalogModuleProtocol {

	// MARK: Properties
	var presenter: InteractorToPresenterCatalogModuleProtocol?

	var apiService: ApiService?

	func loadData(category: String) {
		apiService?.fetch(urlString: "https://catalog.api.onliner.by/search/\(category)", completion: { [weak self] (result: Result<Objects, ApiService.Error>) in
			switch result {
			case .success(let success):
				print(category)
				print(success.total)
				self?.presenter?.showLoadedData(products: success.products)
			case .failure(let failure):
				print(category)
			}
		})
	}
}
