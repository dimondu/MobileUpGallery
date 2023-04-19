//
//  AuthorizationPresenter.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import Foundation

final class AuthorizationPresenter: AuthorizationViewOutputProtocol {
    
    // MARK: - Public Properties
    
    var interactor: AuthorizationInteractorInputProtocol?
    var router: AuthorizationRouterInputProtocol?
    
    // MARK: - Private Properties
    
    private weak var view: AuthorizationViewInputProtocol?
    
    init(view: AuthorizationViewInputProtocol) {
        self.view = view
    }
}

extension AuthorizationPresenter: AuthorizationInteractorOutputProtocol {
    
}
