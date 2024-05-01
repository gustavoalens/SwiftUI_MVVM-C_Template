import SwiftUI

struct MainView<ViewModel: MainViewModelProtocol>: View {
  @StateObject var viewModel: ViewModel
  
  var body: some View {
    Text(viewModel.viewData.fakeServiceFlow)
      .onTapGesture {
        viewModel.goToSecond()
      }
    if viewModel.viewData.updated {
      Button(
        action: {
          viewModel.goToSecond()
        },
        label: {
          Text("GoToSecond")
        }
      )
    }
  }
}

#Preview {
  MainView(
    viewModel: MainViewModel(
      service: MainService(),
      coordinator: MainCoordinator(path: .init())
    )
  )
}
