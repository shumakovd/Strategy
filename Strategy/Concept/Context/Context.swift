//
//  Context.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The Context defines the interface of interest to clients.
class Context {

    /// The Context maintains a reference to one of the Strategy objects. The
    /// Context does not know the concrete class of a strategy. It should work
    /// with all strategies via the Strategy interface.
    private var strategy: Strategy

    /// Usually, the Context accepts a strategy through the constructor, but
    /// also provides a setter to change it at runtime.
    init(strategy: Strategy) {
        self.strategy = strategy
    }

    /// Usually, the Context allows replacing a Strategy object at runtime.
    func update(strategy: Strategy) {
        self.strategy = strategy
    }

    /// The Context delegates some work to the Strategy object instead of
    /// implementing multiple versions of the algorithm on its own.
    func doSomeBusinessLogic() {
        print("Context: Sorting data using the strategy (not sure how it'll do it)\n")

        let result = strategy.doAlgorithm(["a", "b", "c", "d", "e"])
        print(result.joined(separator: ","))
    }
}
