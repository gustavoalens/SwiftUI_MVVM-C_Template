import SwiftUI

struct SecondView<ViewModel: SecondViewModelProtocol>: View {
  @StateObject var viewModel: ViewModel
  
  var body: some View {
    Text("Second Root View")
    Button(
      action: {
        viewModel.pop()
      },
      label: {
        Text(viewModel.viewData.popTitle)
      }
    )
  }
}

#Preview {
  SecondBuilder.build()
}
