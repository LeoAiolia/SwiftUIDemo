//
//  PageRow.swift
//  SwiftUIDemo
//
//  Created by dev-yxr on 2020/9/3.
//  Copyright © 2020 dev-yxr. All rights reserved.
//

import SwiftUI

struct PageRow: View {
    private let title: String
    private let subTitle: String?

    init(title: String, subTitle: String?) {
        self.title = title
        self.subTitle = subTitle
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
    }
}

#if DEBUG
struct PageRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageRow(title: "PageRow title", subTitle: "PageRow subTitle").previewLayout(.fixed(width: 300, height: 60))
            PageRow(title: "PageRow title", subTitle: "PageRow subTitle").previewLayout(.sizeThatFits)
        }
    }
}
#endif
