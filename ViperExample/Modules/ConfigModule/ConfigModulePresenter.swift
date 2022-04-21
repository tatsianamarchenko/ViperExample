//
//  ConfigModulePresenter.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 21.04.22.
//  
//

import Foundation

class ConfigModulePresenter: ViewToPresenterConfigModuleProtocol {

    // MARK: Properties
    var view: PresenterToViewConfigModuleProtocol?
    var interactor: PresenterToInteractorConfigModuleProtocol?
    var router: PresenterToRouterConfigModuleProtocol?

	func setupViewControllers() {
		guard let controllers = self.router?.getViewControllers() else {
			return
		}
		self.view?.display(controllers)
	}
}

extension ConfigModulePresenter: InteractorToPresenterConfigModuleProtocol {
    
}
