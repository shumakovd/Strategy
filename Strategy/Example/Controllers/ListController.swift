//
//  ListController.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class ListController {

    private var dataSource: DataSource?

    func update(dataSource: DataSource) {
        /// ... resest current states ...
        self.dataSource = dataSource
    }

    func displayModels() {

        guard let dataSource = dataSource else { return }
        let models = dataSource.loadModels() as [User]

        /// Bind models to cells of a list view...
        print("\nListController: Displaying models...")
        models.forEach({ print($0) })
    }
}
