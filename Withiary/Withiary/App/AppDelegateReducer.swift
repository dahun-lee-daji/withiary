//
//  AppDelegateReducer.swift
//  Withiary
//
//  Created by 이다훈 on 2023/09/06.
//

import ComposableArchitecture

struct AppDelegateReducer: Reducer {
    struct State: Equatable {
        init() {}
    }
    
    enum Action: Equatable {
        case didFinishLaunching
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .didFinishLaunching:
                return .none
            }
        }
    }
}
