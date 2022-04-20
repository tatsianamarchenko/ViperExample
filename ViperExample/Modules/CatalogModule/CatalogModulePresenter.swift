//
//  CatalogModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class CatalogModulePresenter: ViewToPresenterCatalogModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewCatalogModuleProtocol?
    var interactor: PresenterToInteractorCatalogModuleProtocol?
    var router: PresenterToRouterCatalogModuleProtocol?
}

extension CatalogModulePresenter: InteractorToPresenterCatalogModuleProtocol {
    
}
