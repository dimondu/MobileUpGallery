//
//  AuthorizationConfigurator.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import Foundation

protocol AuthorizationConfigurationInputProtocol {
    func configure(withView view: AuthorizationViewController)
}

final class AuthorizationConfigurator: AuthorizationConfigurationInputProtocol {
    
    // MARK: - Public Methods
    
    func configure(withView view: AuthorizationViewController) {
        let presenter = AuthorizationPresenter(view: view)
        let interactor = AuthorizationInteractor(presenter: presenter)
        let router = AuthorizationRouter(view: view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
