//
//  ConcreteStrategyA.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// Concrete Strategies implement the algorithm while following the base
/// Strategy interface. The interface makes them interchangeable in the Context.
class ConcreteStrategyA: Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T] {
        return data.sorted()
    }
}
