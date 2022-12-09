//
//  RealmStorage.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class RealmStorage: DataSource {

    func loadModels<T: DomainModel>() -> [T] {
        guard T.self == User.self else { return [] }

        let firstUser = User(id: 5, username: "username5")
        let secondUser = User(id: 6, username: "username6")

        return [firstUser, secondUser] as! [T]
    }
}
