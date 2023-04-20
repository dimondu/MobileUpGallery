//
//  GalleryView.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import UIKit

final class GalleryView: UIView {
    
    // MARK: - Public Properties
    
    weak var galleryViewControllerDelegate: GalleryViewControllerDelegate?
    
    
    // MARK: - Initializers
    
    init(_ delegate: GalleryViewControllerDelegate) {
        super .init(frame: .zero)
        self.galleryViewControllerDelegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


