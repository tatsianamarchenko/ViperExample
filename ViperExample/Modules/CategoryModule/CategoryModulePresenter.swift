//
//  CategoryModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class CategoryModulePresenter: ViewToPresenterCategoryModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewCategoryModuleProtocol?
    var interactor: PresenterToInteractorCategoryModuleProtocol?
    var router: PresenterToRouterCategoryModuleProtocol?
}

extension CategoryModulePresenter: InteractorToPresenterCategoryModuleProtocol {
    
}
