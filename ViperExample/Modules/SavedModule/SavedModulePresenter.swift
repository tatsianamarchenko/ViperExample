//
//  SavedModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import Foundation

class SavedModulePresenter: ViewToPresenterSavedModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewSavedModuleProtocol?
    var interactor: PresenterToInteractorSavedModuleProtocol?
    var router: PresenterToRouterSavedModuleProtocol?
}

extension SavedModulePresenter: InteractorToPresenterSavedModuleProtocol {
    
}
