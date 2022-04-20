//
//  ChoosedSubcategoriesModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class ChoosedSubcategoriesModulePresenter: ViewToPresenterChoosedSubcategoriesModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewChoosedSubcategoriesModuleProtocol?
    var interactor: PresenterToInteractorChoosedSubcategoriesModuleProtocol?
    var router: PresenterToRouterChoosedSubcategoriesModuleProtocol?
}

extension ChoosedSubcategoriesModulePresenter: InteractorToPresenterChoosedSubcategoriesModuleProtocol {
    
}
