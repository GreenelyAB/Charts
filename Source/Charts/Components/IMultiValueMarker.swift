//
//  IMultiValueMarker.swift
//  Adjust
//

import Foundation

@objc(IChartMarker)
public protocol IMultiValueMarker: IMarker {

    /// This method enables a custom IMarker to update it's content every time the IMarker is redrawn according to the data entry it points to.
    ///
    /// - parameter entry: The Entry the IMarker belongs to. This can also be any subclass of Entry, like BarEntry or CandleEntry, simply cast it at runtime.
    /// - parameter highlight: The highlight object contains information about the highlighted value such as it's dataset-index, the selected range or stack-index (only stacked bar entries).
    @objc func refreshContent(items: [IMarkerData])

}
