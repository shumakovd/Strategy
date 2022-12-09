//
//  StrategyVC.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit

class StrategyVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testStrategyConcept()
        testStrategyForExample()
    }
    
    // MARK: - Methods
    
    func testStrategyConcept() {
        /// The client code picks a concrete strategy and passes it to the
        /// context. The client should be aware of the differences between
        /// strategies in order to make the right choice.
        
        let context = Context(strategy: ConcreteStrategyA())
        print("Client: Strategy is set to normal sorting.\n")
        context.doSomeBusinessLogic()
        
        print("\nClient: Strategy is set to reverse sorting.\n")
        context.update(strategy: ConcreteStrategyB())
        context.doSomeBusinessLogic()
    }
    
    func testStrategyForExample() {
        let controller = ListController()
        
        let memoryStorage = MemoryStorage<User>()
        memoryStorage.add(usersFromNetwork())
        
        clientCode(use: controller, with: memoryStorage)
        clientCode(use: controller, with: CoreDataStorage())
        clientCode(use: controller, with: RealmStorage())
    }
    
    func clientCode(use controller: ListController, with dataSource: DataSource) {
        
        controller.update(dataSource: dataSource)
        controller.displayModels()
    }
    
    private func usersFromNetwork() -> [User] {
        let firstUser = User(id: 1, username: "username1")
        let secondUser = User(id: 2, username: "username2")
        return [firstUser, secondUser]
    }
    
}

