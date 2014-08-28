//
// Copyright 2014 Scott Logic
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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