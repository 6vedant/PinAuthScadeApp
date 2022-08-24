import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  //position initialization
  var position = 0
  var pinString = ""

  let secondPage: SecondpagePageAdapter = SecondpagePageAdapter()
  
  override func load(_ path: String) {
    super.load(path)

    self.b0.onClick { _ in
      self.updatePin(val: 0)
    }

    self.b1.onClick { _ in
      self.updatePin(val: 1)
    }

    self.b2.onClick { _ in
      self.updatePin(val: 2)
    }

    self.b3.onClick { _ in
      self.updatePin(val: 3)
    }
    self.b4.onClick { _ in
      self.updatePin(val: 4)
    }
    self.b5.onClick { _ in
      self.updatePin(val: 5)
    }
    self.b6.onClick { _ in
      self.updatePin(val: 6)
    }
    self.b7.onClick { _ in
      self.updatePin(val: 7)
    }
    self.b8.onClick { _ in
      self.updatePin(val: 8)
    }
    self.b9.onClick { _ in
      self.updatePin(val: 9)
    }

    self.b_cancel.onClick { _ in
      self.updatePin(val: -1)
    }
  }

  func updatePin(val: Int) {

    if val == -1 {
      if position == 1 {
        self.digit_1.text = "*"
        position -= 1
      } else if position == 2 {
        self.digit_2.text = "*"
        position -= 1
      } else if position == 3 {
        self.digit_3.text = "*"
        position -= 1
      } else if position == 4 {
        self.digit_4.text = "*"
        position -= 1
      } else if position == 5 {
        self.digit_5.text = "*"
        position -= 1
      }
    } else {
      position += 1
      if position == 1 {
        self.digit_1.text = String(val)

      } else if position == 2 {
        self.digit_2.text = String(val)

      } else if position == 3 {
        self.digit_3.text = String(val)

      } else if position == 4 {
        self.digit_4.text = String(val)

      } else if position == 5 {
        self.digit_5.text = String(val)
        pinString = "\(self.digit_1.text)\(self.digit_2.text)\(self.digit_3.text)\(self.digit_4.text)\(self.digit_5.text)"
        self.callFinalMethod(pin: pinString)
        
      } else {
        position = 5
        print("Exceeded")
      }
    }
  }
  
  func callFinalMethod(pin: String) -> Void {
  		print("Final 5-digit pincode: \(pin)")
  		
  }
  
}
