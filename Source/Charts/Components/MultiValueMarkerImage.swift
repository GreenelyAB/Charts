//
//  MultiValueMarkerView.swift
//  Charts
//

import Foundation
import CoreGraphics

#if !os(OSX)
import UIKit
#endif

@objc(ChartMultiValueMarkerImage)
open class MultiValueMarkerImage: NSObject, IMultiValueMarker
{
    /// The marker image to render
    @objc open var image: NSUIImage?

    @objc open var offset = CGPoint()

    @objc open weak var chartView: ChartViewBase?

    /// As long as size is 0.0/0.0 - it will default to the image's size
    @objc open var size = CGSize()

    open func offsetForDrawing(atPoint point: CGPoint) -> CGPoint
    {
        var offset = self.offset

        let chart = self.chartView

        var size = self.size

        if let image = image
        {
            if size.width == 0.0
            {
                size.width = image.size.width
            }
            if size.height == 0.0
            {
                size.height = image.size.height
            }
        }

        let width = size.width
        let height = size.height

        if point.x + offset.x < 0.0
        {
            offset.x = -point.x
        }
        else if let chart = chart, point.x + width + offset.x > chart.bounds.size.width
        {
            offset.x = chart.bounds.size.width - point.x - width
        }

        if point.y + offset.y < 0
        {
            offset.y = -point.y
        }
        else if let chart = chart, point.y + height + offset.y > chart.bounds.size.height
        {
            offset.y = chart.bounds.size.height - point.y - height
        }

        return offset
    }

    open func refreshContent(entry: ChartDataEntry, highlight: Highlight)
    {
        // Do nothing here...
    }

    open func refreshContent(items: [IMarkerData])
    {
        // Do nothing here...
    }

    open func draw(context: CGContext, point: CGPoint)
    {
        guard let image = image else { return }

        let offset = offsetForDrawing(atPoint: point)

        var size = self.size

        if size.width == 0.0
        {
            size.width = image.size.width
        }
        if size.height == 0.0
        {
            size.height = image.size.height
        }

        let rect = CGRect(
            x: point.x + offset.x,
            y: point.y + offset.y,
            width: size.width,
            height: size.height)

        NSUIGraphicsPushContext(context)
        image.draw(in: rect)
        NSUIGraphicsPopContext()
    }
}
