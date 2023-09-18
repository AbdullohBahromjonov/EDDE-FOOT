//
//  RegisterationViewModel.swift
//  EDDE FOOT
//
//  Created by Sattor Jabborov on 9/16/23.
//

import Foundation
import Combine

class RegisterationViewModel: ObservableObject {
    @Published var section: Int = 1
    @Published var buttonDisabled: Bool = true
    
    @Published var time: Int = 59
    var timer: AnyCancellable?
    
    @Published var tellNumber: String = ""
    @Published var who: String = ""
    @Published var name: String = ""
    @Published var isMale: Bool = false
    @Published var age: String = ""
    @Published var level: Int = 0
    @Published var tariff: Int = 0
    
    
    func countDown() {
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            .sink { [weak self] _ in
                self?.time -= 1
                if self?.time == 0 {
                    self?.timer?.cancel()
                }
            }
    }
}
