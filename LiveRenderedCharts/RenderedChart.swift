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
