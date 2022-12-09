//
//  DataSource.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

protocol DataSource {

    func loadModels<T: DomainModel>() -> [T]
}
