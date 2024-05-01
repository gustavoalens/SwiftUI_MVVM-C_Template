import SwiftUI

final class MainViewModel: MainViewModelProtocol {
  // MARK: - Properties
  private let service: MainServiceProtocol
  private let coordinator: any MainCoordinatorProtocol
  
  @Published var viewData: MainViewData = .init(fakeServiceFlow: "Main View")
  
  init(service: MainServiceProtocol, coordinator: any MainCoordinatorProtocol) {
    self.service = service
    self.coordinator = coordinator
    fetch()
  }
  
  func goToSecond() {
    coordinator.goToSecond()
  }
  
  private func fetch() {
    service.fetch { [weak self] result in
      self?.fetchResultHandler(result: result)
    }
  }
  
  private func fetchResultHandler(result: Bool) {
    guard result else { return }
    viewData.fakeServiceFlow = "Main View Updated"
    viewData.updated = result
  }
}

protocol MainViewModelProtocol: ObservableObject {
  var viewData: MainViewData { get }
  
  func goToSecond()
}
