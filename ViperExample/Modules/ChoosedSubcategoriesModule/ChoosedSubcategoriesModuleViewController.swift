//
//  ChoosedSubcategoriesModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit

class ChoosedSubcategoriesModuleViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterChoosedSubcategoriesModuleProtocol?
    
}

extension ChoosedSubcategoriesModuleViewController: PresenterToViewChoosedSubcategoriesModuleProtocol{
    // TODO: Implement View Output Methods
}
