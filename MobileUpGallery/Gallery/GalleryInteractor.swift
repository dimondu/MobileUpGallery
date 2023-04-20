//
//  GalleryInteractor.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import Foundation

protocol GalleryInteractorInputProtocol {
    init(presenter: GalleryInteractorOutputProtocol)
}

protocol GalleryInteractorOutputProtocol: AnyObject {
    
}

final class GalleryInteractor: GalleryInteractorInputProtocol {
    
    // MARK: - Private Properties
    
    private weak var presenter: GalleryInteractorOutputProtocol?
    
    // MARK: - Initializers
    
    init(presenter: GalleryInteractorOutputProtocol) {
        self.presenter = presenter
    }
}
