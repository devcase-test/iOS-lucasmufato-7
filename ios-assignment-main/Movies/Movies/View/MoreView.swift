//
//  MoreView.swift
//  Movies
//
//  Created by xdmgzdev on 17/04/2021.
//

import SwiftUI

struct MoreView: View {
  var body: some View {
    VStack(alignment: .center) {
      Image("sytac_logo")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(
          width: 250,
          alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/
        )
        .padding()
      Text("more_description_label".localized)
        .font(.body).italic()
    }
  }
}

struct MoreView_Previews: PreviewProvider {
  static var previews: some View {
    MoreView()
  }
}
