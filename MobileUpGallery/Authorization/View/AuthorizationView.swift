//
//  AuthorizationView.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 19.04.2023.
//

import UIKit

final class AuthorizationView: UIView {
    
    // MARK: - Constants
    
    enum Constants {
        static let mainTitleText = "Mobile Up Gallery"
        static let mainTitleFontSize: CGFloat = 44
        static let mainTitleTopAnchor: CGFloat = 170
        static let mainTitleLeadingAnchor: CGFloat = 24
        static let mainTitleWidthAnchor: CGFloat = 227
        static let mainTitleHeightAnchor: CGFloat = 106
        static let buttonTitle = "Вход через VK"
        static let buttonFontSize: CGFloat = 15
        static let buttonCornerRadius: CGFloat = 10
        static let enterButtonSideSize: CGFloat = 16
        static let enterButtonBottomAnchor: CGFloat = 42
        static let enterButtonHeightAnchor: CGFloat = 52
    }
    
    // MARK: - Public Properties
    
    weak var authorizationViewControllerDelegate: AuthorizationViewControllerDelegate?
    
    // MARK: - Private Properties
    
    private lazy var mainTitle: UILabel = {
        let mainTitle = UILabel()
        mainTitle.text = Constants.mainTitleText
        mainTitle.font = UIFont.systemFont(ofSize: Constants.mainTitleFontSize, weight: .bold)
        mainTitle.tintColor = .black
        mainTitle.numberOfLines = 0
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        return mainTitle
    }()
    
    private lazy var enterButton: UIButton = {
        let enterButton = UIButton(type: .system)
        enterButton.backgroundColor = .black
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.setTitle(Constants.buttonTitle, for: .normal)
        enterButton.titleLabel?.font = UIFont.systemFont(ofSize: Constants.buttonFontSize)
        enterButton.layer.cornerRadius = Constants.buttonCornerRadius
        enterButton.addTarget(self, action: #selector(enterButtonTapped), for: .touchUpInside)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        return enterButton
    }()
    
    // MARK: - Initializers
    
    init(_ delegate: AuthorizationViewControllerDelegate) {
        super .init(frame: .zero)
        backgroundColor = .white
        addSubview()
        makeConstraints()
        self.authorizationViewControllerDelegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private func addSubview() {
        addSubview(mainTitle)
        addSubview(enterButton)
    }
    
    @objc private func enterButtonTapped() {
        
    }
}

// MARK: - Constraints

extension AuthorizationView {
    func makeConstraints() {
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: topAnchor, constant: Constants.mainTitleTopAnchor),
            mainTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.mainTitleLeadingAnchor),
            mainTitle.widthAnchor.constraint(equalToConstant: Constants.mainTitleWidthAnchor),
            mainTitle.heightAnchor.constraint(equalToConstant: Constants.mainTitleHeightAnchor),
            
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.enterButtonSideSize),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.enterButtonSideSize),
            enterButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Constants.enterButtonBottomAnchor),
            enterButton.heightAnchor.constraint(equalToConstant: Constants.enterButtonHeightAnchor)
        ])
    }
}
