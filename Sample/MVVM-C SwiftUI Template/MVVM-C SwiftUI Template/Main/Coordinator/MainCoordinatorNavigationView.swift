import SwiftUI

struct MainCoordinatorNavigationView<RootView: View, Coordinator: MainCoordinatorProtocol>: View {
  @StateObject var coordinator: Coordinator
  let rootView: RootView
  
  var body: some View {
    NavigationStack(path: $coordinator.path) {
      rootView
        .navigationDestination(for: MainFlow.self) { flow in
          switch flow {
            case .second:
              SecondBuilder.build(path: coordinator.path)
          }
        }
    }
  }
}

#Preview {
  MainBuilder.build()
}
