//
//  MainPresenter.swift
//  VIPER best practices
//
//  Created by Tibor Bödecs on 2019. 03. 05..
//

import Foundation

protocol MainPresenter: AnyObject {
    
    var router: MainRouter? { get set }
    var interactor: MainInteractor? { get set }
    var view: MainView? { get set }
    
    func viewDidAppear()
}
