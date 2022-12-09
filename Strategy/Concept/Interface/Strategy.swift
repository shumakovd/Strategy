//
//  Strategy.swift
//  Strategy
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The Strategy interface declares operations common to all supported versions
/// of some algorithm.
///
/// The Context uses this interface to call the algorithm defined by Concrete
/// Strategies.
protocol Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T]
}
