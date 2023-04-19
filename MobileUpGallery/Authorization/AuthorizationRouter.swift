//
//  AuthorizationRouter.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import Foundation

protocol AuthorizationRouterInputProtocol {
    init(view: AuthorizationViewController)
}

final class AuthorizationRouter: AuthorizationRouterInputProtocol {
    
    // MARK: - Private Properties
    
    private weak var view: AuthorizationViewController?
    
    // MARK: - Initializers
    
    init(view: AuthorizationViewController) {
        self.view = view
    }
}
