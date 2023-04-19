//
//  AuthorizationInteractor.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import Foundation

protocol AuthorizationInteractorInputProtocol {
    init(presenter: AuthorizationInteractorOutputProtocol)
}

protocol AuthorizationInteractorOutputProtocol: AnyObject {
    
}

final class AuthorizationInteractor: AuthorizationInteractorInputProtocol {
    
    // MARK: - Private Properties
    
    private weak var presenter: AuthorizationInteractorOutputProtocol?

    // MARK: - Initializers
    
    init(presenter: AuthorizationInteractorOutputProtocol) {
        self.presenter = presenter
    }
}
