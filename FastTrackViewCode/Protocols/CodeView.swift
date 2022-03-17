//
//  CodeView.swift
//  FastTrackViewCode
//
//  Created by Matias Correa Franco de Faria on 04/03/22.
//

import Foundation


protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
