//
//  AuthorizatonViewController.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import UIKit

protocol AuthorizationViewInputProtocol: AnyObject {
    
}

protocol AuthorizationViewOutputProtocol {
    init(view: AuthorizationViewInputProtocol)
}

final class AuthorizationViewController: UIViewController {
    
    // MARK: - Public Properties
    
    var presenter: AuthorizationViewOutputProtocol?
    
    // MARK: - Private Properties
    
    private let configurator: AuthorizationConfigurationInputProtocol = AuthorizationConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(withView: self)
    }
}

extension AuthorizationViewController: AuthorizationViewInputProtocol {
    
}
