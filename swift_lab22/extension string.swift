//
//  extension string.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/13/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import Foundation
extension String {
    func join<S : Sequence>(elements: S) -> String where S.Generator.Element : Printa {
        return self.join(elements: map(elements){ $0.description })
    }

  // use this if you don't want it constrain to Printable
  //func join<S : SequenceType>(elements: S) -> String {
  //    return self.join(map(elements){ "\($0)" })
  //}
}
