//
//  RenderedChart.swift
//  LiveRenderedCharts
//
//  Created by Sam Davies on 27/08/2014.
//  Copyright (c) 2014 ShinobiControls. All rights reserved.
//

import UIKit

@IBDesignable
class RenderedChart: ShinobiChart {
  let sampleData = SampleDataSource()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
  }

  required init(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
  }
  
  override func prepareForInterfaceBuilder() {
    licenseKey = ""
    sampleData.data = [14, 14, 98, 74, 81, 88, 104, 77, 31, 11, 26]
    datasource = sampleData
  }
}
