# ➕ Add Numbers

![Swift](https://img.shields.io/badge/Swift-F05138?style=for-the-badge&logo=swift&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-147EFB?style=for-the-badge&logo=xcode&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)

**Add Numbers** is a clean and simple utility app designed to showcase basic UIKit principles, user input handling, and error validation in Swift.

---

## 📱 About the App
The application allows users to input two integers and calculate their sum instantly. It focuses on providing a smooth user experience with integrated error checking to handle non-numeric inputs gracefully.

### Key Features
* **Instant Calculation:** Add two numbers with a single tap.
* **Clear & Reset:** Quickly wipe all inputs and results to start a new calculation.
* **Error Validation:** Built-in logic to detect if inputs are not valid integers, alerting the user to fix the input.

---

## 🛠 Tech Stack
* **Language:** Swift
* **Framework:** UIKit
* **Interface:** Storyboards
* **IDE:** Xcode 26.2

---

## 🚀 Getting Started

### Prerequisites
* A Mac running macOS Sequoia (or later).
* **Xcode 26.2** or higher installed.

### Installation
1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/Add-Numbers.git](https://github.com/your-username/Add-Numbers.git)
    ```
2.  **Open the project:**
    Navigate to the project folder and double-click `AddNumbers.xcodeproj`.
3.  **Run the app:**
    Select a simulator (e.g., iPhone 16) and press `Cmd + R` to build and run.

---

## 📸 Screenshots
<p align="center">
  <img src="screenshot.png" width="300" alt="App Screenshot">
</p>

---

## 🧠 Core Logic Preview
The app ensures data integrity using optional binding to validate text fields:

```swift
@IBAction func addNumbersTapped(_ sender: UIButton) {
    guard let firstNum = Int(firstTextField.text ?? ""),
          let secondNum = Int(secondTextField.text ?? "") else {
        resultLabel.text = "Error: Please enter valid integers."
        return
    }
    resultLabel.text = "Sum: \(firstNum + secondNum)"
}
