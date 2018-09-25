//
//  IMultiValueMarker.swift
//  Charts
//

import Foundation

@objc(IChartMultiValueMarker)
public protocol IMultiValueMarker: IMarker {

    /// This method enables a custom IMarker to update its content every time the IMarker is redrawn according to the data entry it points to.
    ///
    /// - parameter items: The IMarkerData related to the IMarker.
    @objc func refreshContent(items: [IMarkerData])

}
