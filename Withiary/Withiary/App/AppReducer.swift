//
//  AppReducer.swift
//  Withiary
//
//  Created by 이다훈 on 2023/09/06.
//

import ComposableArchitecture

struct AppReducer: Reducer {
    struct State {
        var appDelegate: AppDelegateReducer.State
        
        init(appDelegate: AppDelegateReducer.State = .init()) {
            self.appDelegate = appDelegate
        }
    }
    
    enum Action {
        case appDelegate(AppDelegateReducer.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.appDelegate, action: /Action.appDelegate) {
          AppDelegateReducer()
        }
        
        Reduce<State, Action> { state, action in
            switch action {
            case .appDelegate(.didFinishLaunching):
                return .none
            }
        }
    }
    
}
