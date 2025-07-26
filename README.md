<div id="top">

<!-- HEADER STYLE: CLASSIC -->
<div align="left">


# BLOCSOCIALAPP

<em>Connect, Create, Inspire—Social Redefined</em>

<!-- BADGES -->
<img src="https://img.shields.io/github/last-commit/LyNNxMooon/BLocSocialApp?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
<img src="https://img.shields.io/github/languages/top/LyNNxMooon/BLocSocialApp?style=flat&color=0080ff" alt="repo-top-language">
<img src="https://img.shields.io/github/languages/count/LyNNxMooon/BLocSocialApp?style=flat&color=0080ff" alt="repo-language-count">

<em>Built with the tools and technologies:</em>

<img src="https://img.shields.io/badge/JSON-000000.svg?style=flat&logo=JSON&logoColor=white" alt="JSON">
<img src="https://img.shields.io/badge/Markdown-000000.svg?style=flat&logo=Markdown&logoColor=white" alt="Markdown">
<img src="https://img.shields.io/badge/Swift-F05138.svg?style=flat&logo=Swift&logoColor=white" alt="Swift">
<img src="https://img.shields.io/badge/Gradle-02303A.svg?style=flat&logo=Gradle&logoColor=white" alt="Gradle">
<img src="https://img.shields.io/badge/Dart-0175C2.svg?style=flat&logo=Dart&logoColor=white" alt="Dart">
<img src="https://img.shields.io/badge/C++-00599C.svg?style=flat&logo=C++&logoColor=white" alt="C++">
<br>
<img src="https://img.shields.io/badge/XML-005FAD.svg?style=flat&logo=XML&logoColor=white" alt="XML">
<img src="https://img.shields.io/badge/Flutter-02569B.svg?style=flat&logo=Flutter&logoColor=white" alt="Flutter">
<img src="https://img.shields.io/badge/CMake-064F8C.svg?style=flat&logo=CMake&logoColor=white" alt="CMake">
<img src="https://img.shields.io/badge/Kotlin-7F52FF.svg?style=flat&logo=Kotlin&logoColor=white" alt="Kotlin">
<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat&logo=YAML&logoColor=white" alt="YAML">

</div>
<br>

---

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Testing](#testing)
- [Features](#features)
- [Project Structure](#project-structure)
    - [Project Index](#project-index)

---

## Overview

BLocSocialApp is a robust, Flutter-based framework designed to streamline the development of scalable social media applications. It leverages Bloc for state management, Firebase for backend services, and supports multiple platforms including Android, iOS, Web, Windows, macOS, and Linux.

**Why BLocSocialApp?**

This project empowers developers to build feature-rich social apps with ease. The core features include:

- 🎯 **🧩 Modular Architecture:** Reusable widgets and clear separation of concerns for maintainable code.
- 🚀 **⚙️ Cross-Platform Support:** Seamless deployment across mobile, web, and desktop environments.
- 🔒 **🔑 Firebase Integration:** Built-in support for authentication, real-time data, and storage.
- 🛠️ **🧪 State Management:** Bloc pattern ensures predictable UI updates and scalable logic.
- 📈 **📝 Configurable Builds:** Platform-specific configurations for Android, iOS, Windows, macOS, and Linux.
- ✅ **🧹 Code Quality & Testing:** Static analysis and widget tests to maintain high standards.

---

## Features

|      | Component       | Details                                                                                     |
| :--- | :-------------- | :------------------------------------------------------------------------------------------ |
| ⚙️  | **Architecture**  | <ul><li>Flutter-based cross-platform app</li><li>Modular structure separating UI, business logic, and platform channels</li><li>Uses platform-specific code for Android (Kotlin) and iOS (Swift)</li></ul> |
| 🔩 | **Code Quality**  | <ul><li>Adheres to Dart and Flutter best practices</li><li>Uses analysis_options.yaml for linting rules</li><li>Consistent code formatting with pubspec.yaml dependencies</li></ul> |
| 📄 | **Documentation** | <ul><li>Basic README and inline code comments</li><li>Contains platform-specific setup files (e.g., README for Android and iOS)</li><li>Limited external documentation, potential for expansion</li></ul> |
| 🔌 | **Integrations**  | <ul><li>Firebase services via google-services.json for Android and Firebase configuration files for iOS</li><li>Uses pubspec.yaml for package dependencies, including plugins</li><li>Build tools: Gradle (Android), CMake (Windows/Linux), Xcode settings</li></ul> |
| 🧩 | **Modularity**    | <ul><li>Separate platform channels for native integrations</li><li>Uses plugin registration files (generated_plugin_registrant.cc)</li><li>Code organized into feature modules within Flutter</li></ul> |
| 🧪 | **Testing**       | <ul><li>Limited visible testing setup; likely uses Flutter's testing framework</li><li>Potential for unit and widget tests based on project structure</li></ul> |
| ⚡️  | **Performance**   | <ul><li>Uses CMake for native code compilation, optimizing build times</li><li>Platform-specific code in C++, Swift, Kotlin for performance-critical parts</li><li>Flutter's rendering engine for smooth UI</li></ul> |
| 🛡️ | **Security**      | <ul><li>Entitlements files for iOS (debugprofile.entitlements, release.entitlements)</li><li>Google-services.json for Firebase security rules</li><li>Platform-specific security configurations</li></ul> |
| 📦 | **Dependencies**  | <ul><li>Managed via pubspec.yaml and pubspec.lock for Dart packages</li><li>Native dependencies managed through CMakeLists.txt, Gradle scripts</li><li>Includes platform SDKs and third-party plugins</li></ul> |

---

## Project Structure

```sh
└── BLocSocialApp/
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   ├── build.gradle.kts
    │   ├── gradle
    │   ├── gradle.properties
    │   └── settings.gradle.kts
    ├── ios
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── lib
    │   ├── BLoc
    │   ├── Themes
    │   ├── app.dart
    │   ├── config
    │   ├── constants
    │   ├── data
    │   ├── domain
    │   ├── firebase
    │   ├── main.dart
    │   ├── screens
    │   ├── utils
    │   └── widgets
    ├── linux
    │   ├── .gitignore
    │   ├── CMakeLists.txt
    │   ├── flutter
    │   └── runner
    ├── macos
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── pubspec.lock
    ├── pubspec.yaml
    ├── test
    │   └── widget_test.dart
    ├── web
    │   ├── favicon.png
    │   ├── icons
    │   ├── index.html
    │   └── manifest.json
    └── windows
        ├── .gitignore
        ├── CMakeLists.txt
        ├── flutter
        └── runner
```

---

### Project Index

<details open>
	<summary><b><code>BLOCSOCIALAPP/</code></b></summary>
	<!-- __root__ Submodule -->
	<details>
		<summary><b>__root__</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ __root__</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/pubspec.yaml'>pubspec.yaml</a></b></td>
					<td style='padding: 8px;'>- Defines the projects core configuration, dependencies, and environment settings for the Flutter-based social app<br>- It orchestrates essential packages like Firebase, Bloc, and image caching to support features such as authentication, real-time data management, and UI rendering, forming the foundation for the app’s architecture and ensuring seamless integration across modules.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/analysis_options.yaml'>analysis_options.yaml</a></b></td>
					<td style='padding: 8px;'>- Defines static analysis configurations to enforce coding standards and best practices across the Dart codebase<br>- By specifying lint rules and analysis options, it ensures code quality, consistency, and maintainability within the project architecture, supporting effective development workflows and integration with IDEs and command-line tools.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/README.md'>README.md</a></b></td>
					<td style='padding: 8px;'>- Establishes the foundational structure for a Flutter-based social application, enabling rapid development and deployment of social features<br>- Serves as the entry point for the app, guiding users through initial setup and providing essential resources for building a scalable, user-centric mobile experience within the overall project architecture.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- test Submodule -->
	<details>
		<summary><b>test</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ test</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/test/widget_test.dart'>widget_test.dart</a></b></td>
					<td style='padding: 8px;'>- Provides a fundamental widget test verifying the core functionality of the Flutter application<br>- It ensures that the app initializes correctly and that user interactions, such as incrementing a counter, produce expected UI updates<br>- This test supports the overall architecture by validating key user flows and maintaining app stability during development.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- ios Submodule -->
	<details>
		<summary><b>ios</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ ios</b></code>
			<!-- Runner.xcodeproj Submodule -->
			<details>
				<summary><b>Runner.xcodeproj</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner.xcodeproj</b></code>
					<!-- project.xcworkspace Submodule -->
					<details>
						<summary><b>project.xcworkspace</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.xcodeproj.project.xcworkspace</b></code>
							<!-- xcshareddata Submodule -->
							<details>
								<summary><b>xcshareddata</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.xcodeproj.project.xcworkspace.xcshareddata</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
											<td style='padding: 8px;'>- Configure workspace settings to disable preview features within the iOS project environment, ensuring a streamlined development experience<br>- This setting aligns with the overall architecture by optimizing workspace behavior and maintaining consistency across team workflows, supporting efficient project management and collaboration in the Flutter-based mobile application.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- Runner.xcworkspace Submodule -->
			<details>
				<summary><b>Runner.xcworkspace</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner.xcworkspace</b></code>
					<!-- xcshareddata Submodule -->
					<details>
						<summary><b>xcshareddata</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.xcworkspace.xcshareddata</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
									<td style='padding: 8px;'>- Configures workspace settings for the iOS project, specifically disabling live previews within Xcode<br>- This adjustment streamlines the development environment by preventing automatic preview updates, ensuring a more stable and focused workflow during app development and testing within the overall project architecture.</td>
								</tr>
							</table>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- Runner Submodule -->
			<details>
				<summary><b>Runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
							<td style='padding: 8px;'>- Facilitates the integration of Flutter with iOS by initializing the application and registering necessary plugins during startup<br>- Ensures seamless communication between Flutter modules and native iOS components, serving as the primary entry point for app launch processes within the iOS architecture of the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner/Runner-Bridging-Header.h'>Runner-Bridging-Header.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates seamless integration between Flutter and native iOS components by bridging generated plugin registrations<br>- Ensures that all Flutter plugins are properly linked within the iOS environment, supporting smooth communication and functionality across the app’s architecture<br>- This setup is essential for maintaining consistent plugin behavior and stability within the overall Flutter-based iOS application.</td>
						</tr>
					</table>
					<!-- Assets.xcassets Submodule -->
					<details>
						<summary><b>Assets.xcassets</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.Assets.xcassets</b></code>
							<!-- AppIcon.appiconset Submodule -->
							<details>
								<summary><b>AppIcon.appiconset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.Assets.xcassets.AppIcon.appiconset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the app icon assets for iOS and iPadOS platforms, ensuring consistent visual branding across various device sizes and resolutions<br>- Integrates multiple icon images tailored for different device idioms and scales, supporting the overall app architecture by maintaining a cohesive and recognizable user interface identity.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- LaunchImage.imageset Submodule -->
							<details>
								<summary><b>LaunchImage.imageset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.Assets.xcassets.LaunchImage.imageset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the launch screen assets for the iOS application, ensuring a consistent and visually appealing startup experience across all device sizes and resolutions<br>- Integrates multiple image scales to optimize display quality, contributing to the overall user interface architecture by providing a seamless initial impression during app launch.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md'>README.md</a></b></td>
											<td style='padding: 8px;'>- Defines customizable launch screen assets for the iOS application, enabling visual branding and user experience personalization during app startup<br>- Facilitates easy replacement of launch images through Xcode or direct asset management, ensuring the launch screen aligns with branding requirements and enhances initial user engagement within the overall app architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- RunnerTests Submodule -->
			<details>
				<summary><b>RunnerTests</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.RunnerTests</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/ios/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
							<td style='padding: 8px;'>- Provides a foundational test structure for the iOS Runner application within the Flutter project, enabling validation of core functionalities<br>- Serves as a starting point for implementing unit tests to ensure stability and correctness of the app’s iOS-specific components, supporting overall code quality and reliability in the project’s architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- lib Submodule -->
	<details>
		<summary><b>lib</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ lib</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/main.dart'>main.dart</a></b></td>
					<td style='padding: 8px;'>- Initialize the applications core by setting up Firebase integration, enforcing portrait orientation, and launching the main app widget<br>- It serves as the entry point, orchestrating essential startup procedures to ensure the app is properly configured and ready for user interaction within the overall architecture.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/app.dart'>app.dart</a></b></td>
					<td style='padding: 8px;'>- Establishes the core application structure by configuring global state management with multiple Bloc providers for authentication, profile, and feed functionalities<br>- Manages user authentication flow, directing users to either the login screen or the main feed based on authentication status<br>- Integrates Firebase repositories for data handling and ensures seamless navigation and error handling within the apps architecture.</td>
				</tr>
			</table>
			<!-- BLoc Submodule -->
			<details>
				<summary><b>BLoc</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.BLoc</b></code>
					<!-- cubits Submodule -->
					<details>
						<summary><b>cubits</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ lib.BLoc.cubits</b></code>
							<!-- auth Submodule -->
							<details>
								<summary><b>auth</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.BLoc.cubits.auth</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/auth/auth_states.dart'>auth_states.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the various authentication states within the applications state management system, facilitating seamless transitions between initial, loading, authenticated, unauthenticated, and error conditions<br>- These states enable the app to accurately reflect user authentication status, ensuring consistent UI updates and user experience across the overall architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/auth/auth_cubit.dart'>auth_cubit.dart</a></b></td>
											<td style='padding: 8px;'>- Manages user authentication state within the application, facilitating login, registration, and logout processes<br>- Coordinates with the authentication repository to verify user credentials and maintain session status, enabling seamless user experience and secure access control across the apps architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- feeds Submodule -->
							<details>
								<summary><b>feeds</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.BLoc.cubits.feeds</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/feeds/feed_states.dart'>feed_states.dart</a></b></td>
											<td style='padding: 8px;'>- Defines various states for managing the feed feature within the applications Bloc architecture<br>- It encapsulates loading, success, error, and initial states, facilitating seamless state transitions during feed retrieval, display, and upload processes<br>- These states enable the app to handle user interactions and data updates efficiently, ensuring a responsive and consistent user experience across the social media platform.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/feeds/feed_cubit.dart'>feed_cubit.dart</a></b></td>
											<td style='padding: 8px;'>- Manages the creation, retrieval, and deletion of user feeds within the application, facilitating real-time updates and state management<br>- Integrates with the feed repository to handle data operations, ensuring seamless user interactions for posting content, viewing all feeds, and removing posts, thereby supporting the core social feed functionality of the platform.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- profile Submodule -->
							<details>
								<summary><b>profile</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.BLoc.cubits.profile</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/profile/profile_cubit.dart'>profile_cubit.dart</a></b></td>
											<td style='padding: 8px;'>- Manages user profile state within the application by handling profile data retrieval and updates<br>- Facilitates fetching user details and updating profile information such as name and bio, ensuring seamless synchronization between the user interface and data repository<br>- Serves as a central controller for profile-related interactions, maintaining consistent state management across the app.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/BLoc/cubits/profile/profile_states.dart'>profile_states.dart</a></b></td>
											<td style='padding: 8px;'>- Defines various states for managing user profile interactions within the application, including initial, loading, successful data retrieval, and error conditions<br>- Facilitates seamless state transitions in the profile feature, enabling the app to accurately reflect the users profile status and handle data updates or errors effectively within the overall architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- Themes Submodule -->
			<details>
				<summary><b>Themes</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.Themes</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/Themes/light_mode.dart'>light_mode.dart</a></b></td>
							<td style='padding: 8px;'>- Defines the light mode theme for the application, establishing a consistent visual style across the user interface<br>- It specifies color schemes and background colors aligned with a light aesthetic, ensuring a cohesive and accessible appearance throughout the app’s architecture<br>- This theme serves as a foundational style component for rendering the app’s visual identity.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- config Submodule -->
			<details>
				<summary><b>config</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.config</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/config/firebase_options.dart'>firebase_options.dart</a></b></td>
							<td style='padding: 8px;'>- Defines platform-specific Firebase configuration options to facilitate seamless initialization of Firebase services across Android and iOS within the app architecture<br>- Ensures correct setup for authentication, database, and storage integrations, supporting consistent backend connectivity tailored to each platforms requirements<br>- Acts as a centralized configuration point, streamlining Firebase setup and management across the project.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- constants Submodule -->
			<details>
				<summary><b>constants</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.constants</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/constants/images.dart'>images.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a constant URL for a user profile image, serving as a centralized reference within the applications asset management system<br>- It supports consistent display of user avatars across the platform, contributing to a cohesive user interface and simplifying updates to profile imagery within the overall codebase architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- firebase Submodule -->
			<details>
				<summary><b>firebase</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.firebase</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/firebase/firebase_feed_repo.dart'>firebase_feed_repo.dart</a></b></td>
							<td style='padding: 8px;'>- Provides an interface for managing social media feed data within the application architecture<br>- Facilitates creating, deleting, and retrieving feeds from Firebase Realtime Database, supporting both overall feed access and user-specific queries<br>- Serves as the data layer component that ensures seamless synchronization between the apps feed features and cloud storage, enabling real-time updates and data consistency across the platform.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/firebase/firebase_auth_repo.dart'>firebase_auth_repo.dart</a></b></td>
							<td style='padding: 8px;'>- Implements user authentication and profile management within the applications architecture by interfacing with Firebase Authentication and Realtime Database<br>- Facilitates core user operations such as registration, login, retrieval of current user data, and logout, ensuring seamless integration of user identity and profile data across the apps ecosystem.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/firebase/firebase_profile_repo.dart'>firebase_profile_repo.dart</a></b></td>
							<td style='padding: 8px;'>- Manages user profile data within the applications architecture by interfacing with Firebase Realtime Database<br>- Facilitates fetching and updating user profiles, ensuring seamless synchronization between the apps domain layer and cloud storage<br>- Serves as a critical component for maintaining accurate and up-to-date user information across the system.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- domain Submodule -->
			<details>
				<summary><b>domain</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.domain</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/domain/auth_repository.dart'>auth_repository.dart</a></b></td>
							<td style='padding: 8px;'>- Defines the abstract interface for authentication operations within the application, enabling user login, registration, logout, and retrieval of current user data<br>- Serves as a contract for implementing authentication logic, ensuring consistent interaction with user authentication processes across the codebase, and facilitating seamless integration with various data sources or backend services.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/domain/feed_repository.dart'>feed_repository.dart</a></b></td>
							<td style='padding: 8px;'>- Defines an abstract repository interface for managing social media feed data, enabling fetching all feeds, creating new entries, deleting specific feeds, and retrieving feeds by user ID<br>- Serves as a contract for data operations within the applications architecture, facilitating separation of concerns and supporting flexible data source implementations.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/domain/profile_repository.dart'>profile_repository.dart</a></b></td>
							<td style='padding: 8px;'>- Defines an abstract contract for managing user profile data within the application<br>- Facilitates fetching and updating user profiles by specifying essential methods, enabling consistent data access and modification across different implementations<br>- Serves as a core component in the architecture to ensure seamless interaction with user profile information throughout the app.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- widgets Submodule -->
			<details>
				<summary><b>widgets</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.widgets</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/feed_avatar_widget.dart'>feed_avatar_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable widget for displaying user profile avatars within the social feed, leveraging cached network images for optimized loading and graceful error handling<br>- Integrates seamlessly into the overall architecture by ensuring consistent avatar presentation across the application, enhancing user interface cohesion and performance in the feed component.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/confirmation_widget.dart'>confirmation_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable confirmation dialog component that prompts users with a message and options to cancel or confirm actions<br>- Integrates seamlessly within the app’s navigation flow and maintains visual consistency with the theme<br>- Enhances user experience by offering clear, consistent prompts for critical interactions across the application.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/text_field_widget.dart'>text_field_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a customizable text input widget designed for consistent styling across the application<br>- It facilitates user data entry with configurable properties such as obscurity and line limits, integrating seamlessly into the overall UI architecture<br>- This widget enhances user experience by maintaining visual coherence and simplifying form development within the app.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/drawer_widget.dart'>drawer_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a customizable navigation drawer for the app, enabling users to access core sections such as Home, Profile, Search, Settings, and Logout<br>- Integrates with authentication logic to handle user-specific navigation and actions, facilitating seamless movement across screens and managing user session termination within the overall app architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/drawer_tile_widget.dart'>drawer_tile_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable widget for creating customizable navigation drawer items within the applications UI<br>- It standardizes the appearance and behavior of drawer options, ensuring consistency across different sections of the app<br>- This component enhances the overall architecture by simplifying the integration of interactive menu items, contributing to a cohesive and maintainable user interface.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/profile_image_widget.dart'>profile_image_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable widget for displaying user profile images within the application<br>- It fetches images from a network source, handles loading states with a placeholder, and gracefully manages errors by showing a default icon<br>- Integrates seamlessly into the app’s UI, ensuring consistent and efficient rendering of profile pictures across different screens.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/button_widget.dart'>button_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a reusable custom button widget for the applications user interface, enabling consistent styling and interaction across different screens<br>- It simplifies the integration of clickable actions by encapsulating gesture detection and visual design, thereby promoting modularity and maintainability within the overall Flutter-based architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/widgets/loading_widget.dart'>loading_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable loading indicator component that displays a Cupertino-style activity spinner centered on the screen<br>- It enhances user experience by signaling ongoing background processes, ensuring consistent visual feedback across the application<br>- Integrating this widget promotes a cohesive and polished interface during asynchronous operations within the overall app architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- utils Submodule -->
			<details>
				<summary><b>utils</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.utils</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/utils/enums.dart'>enums.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a set of menu options—edit, delete, and share—that facilitate user interactions within the applications interface<br>- These enumerations standardize menu choices across the codebase, supporting consistent behavior and streamlined handling of user commands in various components of the project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/utils/navigation_extension.dart'>navigation_extension.dart</a></b></td>
							<td style='padding: 8px;'>- Provides extension methods to streamline navigation within the Flutter application, enabling seamless transitions between screens and simplifying back navigation<br>- Enhances code readability and maintainability by encapsulating common navigation patterns, thereby supporting a cohesive and efficient user experience across the apps architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- screens Submodule -->
			<details>
				<summary><b>screens</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.screens</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/profile_screen.dart'>profile_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Provides the user profile interface within the app, displaying personal details, profile image, and bio<br>- Integrates with state management to fetch and render profile data dynamically, and offers navigation to profile editing<br>- Serves as a central component for user profile visualization, ensuring a seamless and interactive user experience aligned with the overall app architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/upload_feed_screen.dart'>upload_feed_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates user-generated content creation by providing an interface for composing and submitting new feed posts<br>- Integrates user profile data and manages the upload process, ensuring seamless interaction within the social feed architecture<br>- Handles state transitions during loading and posting, maintaining a responsive experience aligned with the overall app structure.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/login_screen.dart'>login_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates user authentication by providing a login interface integrated with Bloc state management<br>- It captures user credentials, triggers login actions, and navigates between authentication screens, supporting seamless user onboarding and access control within the applications architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/register_screen.dart'>register_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Defines the user registration interface within the app, facilitating new user account creation by capturing essential details such as name, email, and password<br>- Integrates with authentication logic via Blocs AuthCubit to handle registration processes, and provides navigation options for existing users to switch to the login screen, supporting the overall user onboarding flow.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/auth_screen.dart'>auth_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates seamless user authentication flow by toggling between login and registration interfaces within the app<br>- Serves as a central navigation point, managing state transitions to enhance user experience during onboarding<br>- Integrates with dedicated login and registration screens, supporting the overall architecture of user account management in the application.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/feed_screen.dart'>feed_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Provides the main interface for viewing and interacting with a social media feed, displaying user-generated posts, and enabling actions such as editing, deleting, liking, and commenting<br>- Integrates state management to handle feed data loading, updates, and errors, ensuring a dynamic and responsive user experience within the apps architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/lib/screens/edit_profile_screen.dart'>edit_profile_screen.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates user profile editing by providing an interface to update personal information such as bio and name<br>- Integrates with the profile management logic to handle state changes, trigger profile updates, and navigate upon successful modifications<br>- Serves as a key component within the app’s user profile management architecture, enabling seamless user-driven profile customization.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- web Submodule -->
	<details>
		<summary><b>web</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ web</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/web/manifest.json'>manifest.json</a></b></td>
					<td style='padding: 8px;'>- Defines the web applications manifest configuration, establishing core metadata such as app name, icons, theme colors, and display preferences<br>- It ensures consistent branding and user experience across devices, supporting the Flutter-based social apps seamless installation and launch behavior within the overall architecture.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/web/index.html'>index.html</a></b></td>
					<td style='padding: 8px;'>- Defines the entry point for a Flutter web application, establishing the foundational HTML structure and metadata necessary for proper rendering, branding, and deployment<br>- It ensures the app loads correctly across different environments by configuring base paths, icons, and manifest details, serving as the gateway that integrates Flutters compiled assets into a cohesive web experience within the overall project architecture.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- windows Submodule -->
	<details>
		<summary><b>windows</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ windows</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/CMakeLists.txt'>CMakeLists.txt</a></b></td>
					<td style='padding: 8px;'>- Defines the build configuration and setup for the Windows version of the bloc_social_app, orchestrating compilation, linking, and asset management<br>- It ensures consistent build modes, integrates Flutter components, manages plugin inclusion, and handles installation of runtime files and assets, facilitating a streamlined process for deploying a cross-platform social application on Windows.</td>
				</tr>
			</table>
			<!-- runner Submodule -->
			<details>
				<summary><b>runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ windows.runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/Runner.rc'>Runner.rc</a></b></td>
							<td style='padding: 8px;'>- Defines application metadata and resources for the Windows build of the project, including icons, version info, and localization details<br>- Facilitates consistent branding and version management within the overall architecture, ensuring the application presents correct identity and visual elements across Windows environments<br>- Supports seamless integration of resources into the larger codebase.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/flutter_window.cpp'>flutter_window.cpp</a></b></td>
							<td style='padding: 8px;'>- Facilitates the creation and management of a native Windows window integrated with Flutter, enabling seamless rendering of Flutter content within a Windows environment<br>- Handles window lifecycle events, manages the Flutter engine and view, and processes window messages to ensure proper display and interaction of Flutter-based UI components within the desktop application architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/flutter_window.h'>flutter_window.h</a></b></td>
							<td style='padding: 8px;'>- Defines a Flutter window within a Windows environment, serving as a container that hosts and manages a Flutter view<br>- Facilitates integration of Flutter UI components into native Windows applications by initializing and controlling the lifecycle of the embedded Flutter engine and view<br>- Acts as a bridge between Windows window management and Flutter rendering, ensuring seamless UI rendering and interaction.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build configuration for the Windows runner executable within the project architecture, orchestrating compilation, linking, and dependency management<br>- It ensures the application integrates Flutter components, applies standard build settings, and incorporates versioning and platform-specific macros, facilitating a cohesive and functional Windows desktop application as part of the overall multi-platform codebase.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/win32_window.h'>win32_window.h</a></b></td>
							<td style='padding: 8px;'>- Provides a high DPI-aware Win32 window abstraction for creating, displaying, and managing native Windows GUI elements<br>- Facilitates custom rendering and input handling through inheritance, enabling seamless integration of window lifecycle management, message processing, and theme updates within the applications architecture<br>- Serves as a foundational component for building platform-specific UI features in the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/main.cpp'>main.cpp</a></b></td>
							<td style='padding: 8px;'>- Sets up and launches a Windows desktop application utilizing Flutter, initializing the Dart environment, creating the main application window, and managing the message loop for user interactions<br>- It integrates Flutters rendering engine within a native Windows context, enabling a seamless cross-platform UI experience within the overall project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/resource.h'>resource.h</a></b></td>
							<td style='padding: 8px;'>- Defines visual resources for the Windows runner component, including application icons and UI element identifiers<br>- Supports the overall architecture by enabling consistent resource management and visual branding within the Windows environment, facilitating seamless integration and user interface presentation for the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/utils.cpp'>utils.cpp</a></b></td>
							<td style='padding: 8px;'>- Facilitates Windows-specific runtime support by creating and attaching a console for output, and manages command-line argument parsing and encoding conversions<br>- Ensures seamless integration between the Windows environment and the Flutter engine, enabling proper handling of user inputs and output streams within the applications architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/runner.exe.manifest'>runner.exe.manifest</a></b></td>
							<td style='padding: 8px;'>- Defines the application manifest for the Windows runner executable, specifying DPI awareness and OS compatibility settings<br>- Ensures the runner operates correctly on Windows 10 and 11 by configuring display scaling behavior and supporting the targeted operating systems within the overall architecture<br>- This setup promotes consistent user experience and system integration for the application.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/utils.h'>utils.h</a></b></td>
							<td style='padding: 8px;'>- Provides utility functions to facilitate Windows process management and command-line handling within the codebase<br>- It enables creating console windows with redirected output streams, converting UTF-16 strings to UTF-8, and retrieving command-line arguments in a standardized format<br>- These utilities support seamless integration of Windows-specific features, ensuring consistent data encoding and process interaction across the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/runner/win32_window.cpp'>win32_window.cpp</a></b></td>
							<td style='padding: 8px;'>- Implements window management for a Windows desktop application within the Flutter architecture, handling window creation, theming, DPI scaling, and message processing<br>- Facilitates seamless integration of native Win32 window functionalities, including dark mode support and dynamic resizing, ensuring consistent user experience across different display configurations and system themes.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- flutter Submodule -->
			<details>
				<summary><b>flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ windows.flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates the registration of Flutter plugins within the Windows platform, ensuring seamless integration of native functionalities into the Flutter application<br>- Serves as a crucial component in the project’s plugin management architecture, enabling dynamic plugin initialization during app startup to support extended features and platform-specific capabilities.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build process for integrating Flutter with Windows, orchestrating the compilation of Flutters core libraries, platform-specific wrappers, and plugin support<br>- Facilitates seamless communication between Flutters engine and Windows native code, ensuring proper linkage, configuration, and dependency management within the overall architecture<br>- This setup enables a robust, platform-optimized Flutter application on Windows.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
							<td style='padding: 8px;'>- Defines the integration of Flutter plugins for Windows within the build system, ensuring proper linkage and inclusion of Firebase authentication, core, and storage functionalities<br>- Facilitates seamless plugin management and dependency resolution, supporting the overall architecture by enabling essential Firebase services to operate correctly in the Windows environment.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/windows/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
							<td style='padding: 8px;'>- Registers Firebase plugins within the Flutter application on Windows, enabling seamless integration of Firebase Authentication, Core, and Storage services<br>- This component ensures that the necessary plugin interfaces are correctly linked during app initialization, supporting the overall architectures goal of providing robust, cross-platform Firebase functionality in the apps plugin ecosystem.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- macos Submodule -->
	<details>
		<summary><b>macos</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ macos</b></code>
			<!-- Flutter Submodule -->
			<details>
				<summary><b>Flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.Flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Flutter/GeneratedPluginRegistrant.swift'>GeneratedPluginRegistrant.swift</a></b></td>
							<td style='padding: 8px;'>- Registers platform-specific plugins for macOS, enabling seamless integration of Firebase services, local storage, and file management within the Flutter application<br>- Facilitates communication between Flutter and native macOS functionalities, ensuring that essential plugins are correctly initialized and available throughout the app’s architecture<br>- This setup is vital for maintaining consistent plugin registration across the project’s macOS module.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- Runner Submodule -->
			<details>
				<summary><b>Runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.Runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
							<td style='padding: 8px;'>- Defines application lifecycle behavior for the macOS version of the project, ensuring proper termination and state restoration<br>- Integrates Flutter with native macOS features, facilitating seamless app closure and secure state management within the overall architecture<br>- Supports consistent user experience and stability across the applications runtime environment.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Runner/DebugProfile.entitlements'>DebugProfile.entitlements</a></b></td>
							<td style='padding: 8px;'>- Defines security entitlements for the macOS application, enabling sandboxing, allowing runtime code execution, and permitting network server operations<br>- These settings ensure the app operates within specified security boundaries while supporting necessary functionalities, aligning with the overall architecture to maintain a secure and functional macOS environment for the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Runner/Release.entitlements'>Release.entitlements</a></b></td>
							<td style='padding: 8px;'>- Defines security entitlements for the macOS application, specifically enabling sandboxing to restrict app permissions<br>- This configuration enhances security by isolating the apps runtime environment, aligning with the overall architectures focus on secure, controlled execution within the macOS platform.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Runner/MainFlutterWindow.swift'>MainFlutterWindow.swift</a></b></td>
							<td style='padding: 8px;'>- Defines the main application window for the macOS version, integrating Flutter content within a native Cocoa environment<br>- It establishes the windows structure, embeds the Flutter view controller, and registers generated plugins, ensuring seamless communication between native macOS components and Flutter, thereby supporting a cohesive cross-platform user interface within the overall architecture.</td>
						</tr>
					</table>
					<!-- Assets.xcassets Submodule -->
					<details>
						<summary><b>Assets.xcassets</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ macos.Runner.Assets.xcassets</b></code>
							<!-- AppIcon.appiconset Submodule -->
							<details>
								<summary><b>AppIcon.appiconset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ macos.Runner.Assets.xcassets.AppIcon.appiconset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the macOS application icon set by specifying various image sizes and resolutions to ensure consistent visual branding across different display contexts<br>- This configuration supports the overall app architecture by providing the necessary assets for a polished and professional user interface, aligning with platform standards for iconography and enhancing user recognition.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- RunnerTests Submodule -->
			<details>
				<summary><b>RunnerTests</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.RunnerTests</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/macos/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
							<td style='padding: 8px;'>- Provides a foundational test structure for the macOS Flutter application, enabling validation of core functionalities within the Runner environment<br>- Serves as a starting point for implementing unit tests to ensure stability and correctness of the app’s integration with macOS-specific features, supporting overall code quality and reliability in the project architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- linux Submodule -->
	<details>
		<summary><b>linux</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ linux</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/CMakeLists.txt'>CMakeLists.txt</a></b></td>
					<td style='padding: 8px;'>- Defines the build configuration and assembly process for the Linux desktop application, orchestrating compilation, dependency management, and resource bundling<br>- Ensures consistent, optimized builds of the Flutter-based app integrated with GTK, facilitating deployment and runtime resource management within the overall project architecture.</td>
				</tr>
			</table>
			<!-- runner Submodule -->
			<details>
				<summary><b>runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ linux.runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/runner/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build configuration for the Linux runner application, specifying source files, dependencies, and build settings<br>- It orchestrates the compilation process to produce the executable, integrating Flutter and GTK libraries to enable a cross-platform graphical interface within the overall project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/runner/main.cc'>main.cc</a></b></td>
							<td style='padding: 8px;'>- Initialize and launch the application within the Linux environment, serving as the entry point for the overall software architecture<br>- It sets up the core application instance and manages its execution flow, ensuring seamless startup and integration with the broader system<br>- This file is essential for orchestrating the applications lifecycle in the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/runner/my_application.h'>my_application.h</a></b></td>
							<td style='padding: 8px;'>- Defines the interface for creating a Flutter-based desktop application within the Linux environment, integrating GTK for native window management<br>- Serves as a foundational component that facilitates initializing and managing the applications lifecycle, ensuring seamless integration between Flutters rendering engine and Linux's native GUI system<br>- This file is essential for establishing the application's core structure and entry point.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/runner/my_application.cc'>my_application.cc</a></b></td>
							<td style='padding: 8px;'>- Defines the core application structure and lifecycle management for a Linux desktop app built with GTK and Flutter<br>- It handles application startup, window creation with adaptive header bar styling, command-line argument processing, and plugin registration, ensuring seamless integration and user interface consistency across different Linux environments.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- flutter Submodule -->
			<details>
				<summary><b>flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ linux.flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates the registration of Flutter plugins within the Linux platform, ensuring seamless integration of plugins into the Flutter applications plugin registry<br>- Serves as a crucial component in the overall architecture by enabling dynamic plugin management and interoperability, thereby supporting the extensibility and modularity of the Flutter Linux environment.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build process for integrating Flutters Linux library into the project, managing dependencies, configurations, and compilation steps<br>- Ensures that Flutters core components and platform-specific assets are correctly assembled and linked, facilitating seamless embedding of Flutter UI within the Linux environment as part of the overall architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
							<td style='padding: 8px;'>- Facilitates integration of Flutter plugins into the Linux build system by dynamically including plugin directories and linking their libraries<br>- Ensures seamless incorporation of both standard and FFI plugins, maintaining proper dependencies and library bundling within the overall architecture<br>- Supports modular plugin management, enabling efficient extension and maintenance of Flutter-based Linux applications.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/linux/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
							<td style='padding: 8px;'>- Registers Flutter plugins with the applications plugin registry during startup, ensuring seamless integration of native functionalities<br>- As part of the generated codebase, it facilitates plugin initialization without manual intervention, maintaining the modular architecture of the Flutter project<br>- This file acts as a bridge between Flutter and native platform plugins, supporting smooth cross-platform operation.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- android Submodule -->
	<details>
		<summary><b>android</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ android</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/settings.gradle.kts'>settings.gradle.kts</a></b></td>
					<td style='padding: 8px;'>- Defines plugin management and build configuration for the Android project, integrating Flutter SDK paths and repositories<br>- Facilitates consistent plugin application and dependency resolution across the codebase, ensuring seamless integration of Flutter and Android components within the overall architecture<br>- Supports streamlined build processes and plugin management for the mobile application.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/build.gradle.kts'>build.gradle.kts</a></b></td>
					<td style='padding: 8px;'>- Defines repository sources and configures build directories for all subprojects within the Android project, ensuring consistent dependency resolution and build environment setup<br>- Establishes a centralized build structure, facilitating efficient project management and clean build processes across the entire codebase.</td>
				</tr>
			</table>
			<!-- app Submodule -->
			<details>
				<summary><b>app</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ android.app</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/build.gradle.kts'>build.gradle.kts</a></b></td>
							<td style='padding: 8px;'>- Defines the Android build configuration for the Flutter-based social app, specifying SDK versions, application identifiers, and build types<br>- Integrates Flutters build system with Androids Gradle setup, ensuring proper compilation, versioning, and signing configurations to support both development and release workflows within the overall project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/google-services.json'>google-services.json</a></b></td>
							<td style='padding: 8px;'>- Configure Firebase integration for the Android app, enabling seamless access to Firebase services such as authentication, cloud storage, and analytics<br>- This setup ensures the app can securely communicate with Firebase backend resources, supporting core functionalities and enhancing user engagement within the overall project architecture.</td>
						</tr>
					</table>
					<!-- src Submodule -->
					<details>
						<summary><b>src</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ android.app.src</b></code>
							<!-- profile Submodule -->
							<details>
								<summary><b>profile</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.profile</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/src/profile/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the necessary internet permission for development activities within the Android profile build of the project<br>- It enables communication between the Flutter tool and the application during debugging, hot reload, and other development processes, ensuring smooth integration and testing in the Android environment<br>- This setup supports efficient development workflows and seamless app updates.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- main Submodule -->
							<details>
								<summary><b>main</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.main</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/src/main/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the main application configuration for the Android platform within the social app, establishing the apps entry point, theme, and intent filters<br>- Facilitates seamless integration of Flutters embedding and plugin registration, ensuring proper startup behavior and interaction capabilities with Android system features<br>- Serves as the foundational setup for launching and managing the app's Android-specific lifecycle.</td>
										</tr>
									</table>
									<!-- kotlin Submodule -->
									<details>
										<summary><b>kotlin</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ android.app.src.main.kotlin</b></code>
											<!-- com Submodule -->
											<details>
												<summary><b>com</b></summary>
												<blockquote>
													<div class='directory-path' style='padding: 8px 0; color: #666;'>
														<code><b>⦿ android.app.src.main.kotlin.com</b></code>
													<!-- example Submodule -->
													<details>
														<summary><b>example</b></summary>
														<blockquote>
															<div class='directory-path' style='padding: 8px 0; color: #666;'>
																<code><b>⦿ android.app.src.main.kotlin.com.example</b></code>
															<!-- bloc_social_app Submodule -->
															<details>
																<summary><b>bloc_social_app</b></summary>
																<blockquote>
																	<div class='directory-path' style='padding: 8px 0; color: #666;'>
																		<code><b>⦿ android.app.src.main.kotlin.com.example.bloc_social_app</b></code>
																	<table style='width: 100%; border-collapse: collapse;'>
																	<thead>
																		<tr style='background-color: #f8f9fa;'>
																			<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
																			<th style='text-align: left; padding: 8px;'>Summary</th>
																		</tr>
																	</thead>
																		<tr style='border-bottom: 1px solid #eee;'>
																			<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/src/main/kotlin/com/example/bloc_social_app/MainActivity.kt'>MainActivity.kt</a></b></td>
																			<td style='padding: 8px;'>- Defines the main entry point for the Android application within the Flutter framework, enabling seamless integration of Flutters UI components with native Android functionalities<br>- It serves as the bridge that launches the app on Android devices, ensuring proper initialization and execution of the Flutter-based social media platform within the overall project architecture.</td>
																		</tr>
																	</table>
																</blockquote>
															</details>
														</blockquote>
													</details>
												</blockquote>
											</details>
										</blockquote>
									</details>
								</blockquote>
							</details>
							<!-- debug Submodule -->
							<details>
								<summary><b>debug</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.debug</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/BLocSocialApp/blob/master/android/app/src/debug/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the necessary internet permission for development activities within the Android environment, enabling communication between the Flutter tool and the app during debugging, hot reload, and other development processes<br>- This configuration ensures smooth integration and efficient testing workflows, supporting the overall architecture by facilitating seamless development and debugging capabilities for the mobile application.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
		</blockquote>
	</details>
</details>

---

## Getting Started

### Prerequisites

This project requires the following dependencies:

- **Programming Language:** Dart
- **Package Manager:** Pub, Cmake, Gradle

### Installation

Build BLocSocialApp from the source and install dependencies:

1. **Clone the repository:**

    ```sh
    ❯ git clone https://github.com/LyNNxMooon/BLocSocialApp
    ```

2. **Navigate to the project directory:**

    ```sh
    ❯ cd BLocSocialApp
    ```

3. **Install the dependencies:**

**Using [pub](https://dart.dev/):**

```sh
❯ pub get
```
**Using [cmake](https://isocpp.org/):**

```sh
❯ cmake . && make
```
**Using [gradle](https://gradle.org/):**

```sh
❯ gradle build
```

### Usage

Run the project with:

**Using [pub](https://dart.dev/):**

```sh
dart {entrypoint}
```
**Using [cmake](https://isocpp.org/):**

```sh
./BLocSocialApp
```
**Using [gradle](https://gradle.org/):**

```sh
gradle run
```

### Testing

Blocsocialapp uses the {__test_framework__} test framework. Run the test suite with:

**Using [pub](https://dart.dev/):**

```sh
pub run test
```
**Using [cmake](https://isocpp.org/):**

```sh
ctest
```
**Using [gradle](https://gradle.org/):**

```sh
gradle test
```

---

<div align="left"><a href="#top">⬆ Return</a></div>

---
