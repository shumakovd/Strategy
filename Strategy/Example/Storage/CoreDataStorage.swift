//
//  CoreDataStorage.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class CoreDataStorage: DataSource {

    func loadModels<T: DomainModel>() -> [T] {
        guard T.self == User.self else { return [] }

        let firstUser = User(id: 3, username: "username3")
        let secondUser = User(id: 4, username: "username4")

        return [firstUser, secondUser] as! [T]
    }
}
