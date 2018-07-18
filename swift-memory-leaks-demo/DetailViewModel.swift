import UIKit

class DetailViewModel {
  private let name: String
  private var presenter: UIViewController?
  private var actionHandler: (() -> Void)?
  
  init(name: String, presenter: UIViewController) {
    self.name = name
    self.presenter = presenter
    configure()
  }
  
  func configure() {
    actionHandler = {
      print("Hey, \(self.name)")
    }
  }
  
  deinit {
    print("DetailViewModel dealloc ...")
  }
}
