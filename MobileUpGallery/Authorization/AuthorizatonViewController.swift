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

protocol AuthorizationViewControllerDelegate: AnyObject {
    
}

final class AuthorizationViewController: UIViewController {
    
    // MARK: - Public Properties
    
    var presenter: AuthorizationViewOutputProtocol?
    
    // MARK: - Private Properties
    
    private let configurator: AuthorizationConfigurationInputProtocol = AuthorizationConfigurator()
    private lazy var contentView = AuthorizationView(self)
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(withView: self)
    }
    
    override func loadView() {
        super.loadView()
        view = contentView
    }
    
}

// MARK: - AuthorizationViewInputProtocol

extension AuthorizationViewController: AuthorizationViewInputProtocol {
    
}

// MARK: - AuthorizationViewControllerDelegate

extension AuthorizationViewController: AuthorizationViewControllerDelegate {
    
}
