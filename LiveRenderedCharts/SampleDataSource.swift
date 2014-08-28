//
//  SampleDataSource.swift
//  LiveRenderedCharts
//
//  Created by Sam Davies on 27/08/2014.
//  Copyright (c) 2014 ShinobiControls. All rights reserved.
//

import Foundation

class SampleDataSource : NSObject, SChartDatasource {
  
  var data = [Double]()
  
  func numberOfSeriesInSChart(chart: ShinobiChart!) -> Int {
    return 1
  }
  
  func sChart(chart: ShinobiChart!, seriesAtIndex index: Int) -> SChartSeries! {
    return SChartLineSeries()
  }
  
  func sChart(chart: ShinobiChart!, numberOfDataPointsForSeriesAtIndex seriesIndex: Int) -> Int {
    return data.count
  }
  
  func sChart(chart: ShinobiChart!, dataPointsForSeriesAtIndex seriesIndex: Int) -> [AnyObject]! {
    return Array(enumerate(data)).map {
      (idx, value) in
      let dp = SChartDataPoint()
      dp.xValue = idx
      dp.yValue = value
      return dp
    }
  }
  
  func sChart(chart: ShinobiChart!, dataPointAtIndex dataIndex: Int, forSeriesAtIndex seriesIndex: Int) -> SChartData! {
    let dp = SChartDataPoint()
    dp.xValue = dataIndex
    dp.yValue = data[dataIndex]
    return dp
  }
  
}