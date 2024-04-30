import SwiftUI

struct ___VARIABLE_productName:identifier___CoordinatorNavigationView<RootView: View, Coordinator: ___VARIABLE_productName:identifier___CoordinatorProtocol>: View {
  @StateObject var coordinator: Coordinator
  let rootView: RootView
  
  var body: some View {
    NavigationStack(path: $coordinator.path) {
      rootView
        .navigationDestination(for: ___VARIABLE_productName:identifier___Flow.self) { flow in
          switch flow {
            case <#NextScreen1#>:
              <#Feature1Composer#>.start()
              
            case <#NextScreen2#>:
              <#Feature2Composer#>.start()
              
            case <#NextScreenN#>:
              <#FeatureNComposer#>.start()
              
          }
        }
    }
  }
}

#Preview {
  ___VARIABLE_productName:identifier___CoordinatorNavigationView(coordinator: <#_#>, rootView: <#_#>)
}
