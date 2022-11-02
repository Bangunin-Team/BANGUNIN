//
//  AlarmRepeatView.swift
//  BANGUNIN
//
//  Created by Zevira varies martan on 02/11/22.
//

import SwiftUI

struct AlarmRepeatView : View {
  @Binding var repeatDay: [RepeatDay]
  
  var body: some View {
    List {
      ForEach(0..<7) { index in
        AlarmRepeatCellView(repeatDay: self.$repeatDay, index: .constant(index), isContained: self.isContained(index))
      }
    }.listStyle(.grouped)
    .navigationBarTitle(Text("Repeat"), displayMode: .inline)
  }
  
  private func isContained(_ index: Int) -> Bool {
    let day = RepeatDay(rawValue: index)!
    
    return self.repeatDay.contains(day)
  }
}
