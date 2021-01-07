# 🍎 FirebaseSignInWithAppleButton

![swift v5.3](https://img.shields.io/badge/swift-v5.3-orange.svg)
![platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
![deployment target iOS 14](https://img.shields.io/badge/deployment%20target-iOS%2014-blueviolet)

**FirebaseSignInWithAppleButton** is a lightweight `SwiftUI` View that implements `Sign In with Apple` in `Firebase Authentication`.

## 💻 Installation
### 📦 Swift Package Manager
Using <a href="https://swift.org/package-manager/" rel="nofollow">Swift Package Manager</a>, add it as a Swift Package in Xcode 11.0 or later, `select File > Swift Packages > Add Package Dependency...` and add the repository URL:
```
https://github.com/rebeloper/FirebaseSignInWithAppleButton.git
```
### ✊ Manual Installation
Download and include the `FirebaseSignInWithAppleButton` folder and files in your codebase. Make sure that you also install `FirebaseAuth`.

### 📲 Requirements
- iOS 14+
- Swift 5

### 📲 Depencencies
- `FirebaseAuth` from `https://github.com/firebase/firebase-ios-sdk` (automatically installed when used with Swift Package Manager)

## 🚨 Before usage

1. Make sure that you have added the `Sign in with Apple` Capability in `Signing & Capabilities` for yor Target.
2. You project must be ready to authenticate with `Sign in with Apple`: https://firebase.google.com/docs/auth/ios/apple?authuser=0 (Don't have to follow the code implementation)

## 👉 Import

Import `FirebaseSignInWithAppleButton` into your `View`

```
import FirebaseSignInWithAppleButton
```

## 🧳 Features

Here's the list of the awesome features `FirebaseSignInWithAppleButton` has:
- [X] has all the functionality as the `SwiftUI` `SignInWithAppleButton`
- [X] after `Signing in with Apple` it will also authenticate with `Firebase Authentication`

## ⚙️ How to use

Using `FirebaseSignInWithAppleButton` is super simple:

```
FirebaseSignInWithAppleButton()
```

This will present a preset `SignInWithApple` button with all it's functionalities.

## 🤩 Advanced usage

### Choose a `label` type. Default is `.signIn`:

```
FirebaseSignInWithAppleButton(label: .continue)
```

### Set up requested scopes . Default is `[.fullName, .email]`:

```
FirebaseSignInWithAppleButton(requestedScopes: [.email])
```

### Add a completion handler:

```
FirebaseSignInWithAppleButton() { (result) in
    switch result {
    case .success(let firebaseSignInWithAppleResult):
        print(firebaseSignInWithAppleResult)
        let uid = firebaseSignInWithAppleResult.authDataResult.user.uid
        let email = firebaseSignInWithAppleResult.authDataResult.user.email ?? ""
        let name = firebaseSignInWithAppleResult.token.name // name taken from Apple
        // this is a good place to save the user Profile to Firestore if it does not already exist
    case .failure(let err):
        print(err.localizedDescription)
    }
}
```

**IMPORTANT:** Do save the `name` given by Apple on Firestore in a `Profile` because this will be given by Apple **ONLY** on the very first sign in!

## 🎨 Style

Style it as a regular `SwiftUI` `SignInWithAppleButton`:

```
FirebaseSignInWithAppleButton().signInWithAppleButtonStyle(.whiteOutline)
```

Add a frame to see the button visually change it's content:

```
FirebaseSignInWithAppleButton().frame(width: 100, height: 100)

// try:
// .frame(width: 50, height: 50)
// .frame(width: 100, height: 100)
// .frame(width: 200, height: 50)
// .frame(height: 150)
```

## ✍️ Contact

<a href="https://rebeloper.com/">rebeloper.com</a> / 
<a href="https://www.youtube.com/rebeloper/">YouTube</a> / 
<a href="https://store.rebeloper.com/">Shop</a> / 
<a href="https://rebeloper.com/mentoring">Mentoring</a>

## 📃 License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
