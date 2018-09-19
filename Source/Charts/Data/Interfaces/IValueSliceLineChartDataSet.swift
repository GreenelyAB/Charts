//
//  IValueSliceLineChartDataSet.swift
//  Charts
//

import Foundation
import CoreGraphics

@objc
public protocol IValueSliceLineChartDataSet: ILineChartDataSet
{

    /// If true, drawing circles for highlighted values is enabled
    var drawCirclesOnlyForHighlightedValueEnabled: Bool { get set }

    /// - returns: `true` if drawing circles for highlighted values in this DataSet is enabled, `false` if not
    var isDrawCirclesOnlyForHighlightedValueEnabled: Bool { get }
}
