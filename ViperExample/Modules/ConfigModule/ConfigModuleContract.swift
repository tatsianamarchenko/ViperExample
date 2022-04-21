//
//  ConfigModuleContract.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 21.04.22.
//  
//

import Foundation
import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewConfigModuleProtocol {
	func display(_ viewControllers: [UIViewController])
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterConfigModuleProtocol {
    
    var view: PresenterToViewConfigModuleProtocol? { get set }
    var interactor: PresenterToInteractorConfigModuleProtocol? { get set }
    var router: PresenterToRouterConfigModuleProtocol? { get set }

	func setupViewControllers()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorConfigModuleProtocol {
    
    var presenter: InteractorToPresenterConfigModuleProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterConfigModuleProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterConfigModuleProtocol {
	func getViewControllers() -> [UIViewController]
}
