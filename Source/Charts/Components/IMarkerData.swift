//
//  IMarkerData.swift
//  Charts
//

import Foundation

@objc(IChartMarkerData)
public protocol IMarkerData: class {

    /// - returns: The data entry.
    /// **default**: nil
    var entry: ChartDataEntry? { get set }

    /// - returns: The object that should be highlighted.
    /// **default**: nil
    var highlight: Highlight? { get set }

    /// The color that is used for filling the line surface area.
    var color: NSUIColor { get set }

    /// value formatter to convert value to string.
    var valueFormatter: IValueFormatter? { get set }

}
