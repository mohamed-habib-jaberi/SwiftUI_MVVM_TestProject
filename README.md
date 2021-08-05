# SwiftUI_MVVM_TestProject

In this project we talk about MVVM (Model - View Model - Model), which is a design pattern recommend for SwiftUI 🤩. Next we will discover what MVVM means and how it works with SwiftUI. A important part is to understand the data flow. We will see why we use ObservableObject and @Published.
We will be focus on the declarative programming in SwiftUI, where "the truth" comes in. In the view part we will see the difference between @ObservedObject, @StateObject and @EnvironmentObject. 
 We will use it to improve a sample project and take advantage of it when working in the preview and writing unit tests.

Overview
 Introduction
Coding example with bad practice
How does Model - View Model - Model work ⭐️
MVVM with SwiftUI: State management and data flow ⭐️
Recoding our coding example to use MVVM
Advantage of MVVM: dependency injection and showing different states of the view model in the preview
Advantage of MVVM: easy to include unit testing for SwiftUI projects
Wrap-up

==>  viewModel : should be a class and we need to comform to ObservableObject to start our Publishing streams or data flow stream and we should use for all properties that we defined there at sign published

📖  Summary blog post about MVVM where you can find all the images from this tutorial here: https://www.swiftyplace.com/blog/swif...
read more about how to learn SwiftUI in this block post.
https://karinprater.medium.com/on-the...

courses! 
👨‍💻 SwiftUI course https://www.swiftyplace.com/courses/s...


👉  Overview of Property wrappers in SwiftUI https://youtu.be/J6afKuHJFCE
👉 @State vs @Binding https://youtu.be/q8nBhtmuKXs
👉 @ObservedObject vs. @StateObject https://youtu.be/5ryXee_Ye3k
👉 @Published vs @State https://youtu.be/ep6WND6j30g
👉 AppStorage and SceneStorage  https://youtu.be/saofnz959WM

<img width="930" alt="Screenshot 2021-08-05 at 12 32 06" src="https://user-images.githubusercontent.com/36473665/128336058-e364ff2a-0d0d-403b-b4de-40faeea3aba7.png">

<img width="776" alt="Screenshot 2021-08-05 at 11 35 48" src="https://user-images.githubusercontent.com/36473665/128336103-6cc67c71-e623-4257-9faa-bec318fde945.png">

<img width="729" alt="Screenshot 2021-08-05 at 11 40 44" src="https://user-images.githubusercontent.com/36473665/128336145-91463c27-ba37-4bfa-8d82-48f227802a40.png">

<img width="665" alt="Screenshot 2021-08-05 at 11 50 46" src="https://user-images.githubusercontent.com/36473665/128336190-27f7ca75-c2a1-46ab-83e0-ada4043dcd0f.png">

<img width="543" alt="Screenshot 2021-08-05 at 11 54 24" src="https://user-images.githubusercontent.com/36473665/128336220-36999bcc-3e93-4cc8-8631-f50339bab0ca.png">

<img width="477" alt="Screenshot 2021-08-05 at 11 56 45" src="https://user-images.githubusercontent.com/36473665/128336243-92dc4005-787d-4295-81a1-e6ec326d9f12.png">


#SwiftUI life Cycle

<img width="389" alt="Screenshot 2021-08-05 at 12 35 32" src="https://user-images.githubusercontent.com/36473665/128336614-f4b7007b-c661-4518-a909-f73c7f88aa7a.png">

