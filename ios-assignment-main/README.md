[![Sytac](https://sytac.io/images/2017/11/logo.svg)](http://sytac.io)
# Sytac iOS assignment | Movies

The time has come for us to unveil the code challenge Sytac has prepared for you. The challenge involves working with the Movies application and includes the following tasks:

### Questions

1. Provide a high-level review of the application. Give your opinion on both aspects you consider positive and aspects you consider negative. Describe how and why would you do things differently.  
2. The logic of ImageCache hides an issue. Try to discover and fix it.
3. Replace the binding between Repository and View model without combine.
4. Replace the Popular detail view with a new custom detail view. This view should display a detail with the info of the model movie model. Please use SwiftUI for the detailed view.
5. Replace the TopRated tab with a new list view. This view should display a list of the TopRated movies and it must be implemented programmatically using UIKit.
6. Write unit tests whereever you need them.
7. In MoviewRow.swift line 11 we use @StateObject, could we change it with @ObservableObject? what are the differences?
8. In PopularMoviesListViewModel.swift we ask for popular movies, using the current implementation fetch top rated movies instead, and explain what is happening.
9. Implement load more functionality for Popular movies list screen.


You have total freedom to modify the codebase, there are no constraints on the design/layout of the TopRated screen. The TopRated List and detail view should be created programmatically only (no Interface Builder nor SwiftUI). 

##### Notes: The Movies project works with Xcode 12 and up and the language used is Swift.

### Backend:
To retrieve movies related data, the application is using this API
https://www.themoviedb.org/documentation/api

### Requisites:
- The project has to compile without errors.
- The code should be clean, efficient and understandable. Remember to
structure your source code correctly (using a nice architecture would
make this easier).
- Keep in mind the performance of the application.
- Use version control in the project to show your progress, commit like you
would normally.
- We would like to see at least the first 5 questions solved, the more you provide the better.

Good luck!

## License

MIT
**Free Software!**
