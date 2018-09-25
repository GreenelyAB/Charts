//
//  MarkerData.swift
//  Charts
//

import Foundation

@objc(ChartMarkerData)
class MarkerData: NSObject, IMarkerData {
    /// - returns: The data entry.
    /// **default**: nil
    var entry: ChartDataEntry?

    /// - returns: The object that should be highlighted.
    /// **default**: nil
    var highlight: Highlight?

    /// The color that is used for filling the line surface area.
    var color = NSUIColor.gray

    /// value formatter to convert value to string.
    var valueFormatter: IValueFormatter?

    init(entry: ChartDataEntry, highlight: Highlight, color: NSUIColor, valueFormatter: IValueFormatter?) {
        super.init()
        self.entry = entry
        self.highlight = highlight
        self.color = color
        self.valueFormatter = valueFormatter
    }
}
