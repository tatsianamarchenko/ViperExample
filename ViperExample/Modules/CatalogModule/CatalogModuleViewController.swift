//
//  CatalogModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit

class CatalogModuleViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterCatalogModuleProtocol?
    
}

extension CatalogModuleViewController: PresenterToViewCatalogModuleProtocol{
    // TODO: Implement View Output Methods
}
