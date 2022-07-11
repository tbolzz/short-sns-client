# short-sns-client

## Flutter SDK
1. Install [`Flutter SDK`](https://docs.flutter.dev/get-started/install/macos#get-sdk).
2. Add `export PATH="$HOME/development/flutter/bin:$PATH"` in `~/.zshrc`.
3. Check flutter installaition.
    ```bash
    flutter --version
    ```

## IOS simulaotr
1. Install [`Xcode`](https://flutter-ko.dev/docs/get-started/install/macos#xcode-%EC%84%A4%EC%B9%98).
2. Open [`simulator`](https://flutter-ko.dev/docs/get-started/install/macos#ios-%EC%8B%9C%EB%AE%AC%EB%A0%88%EC%9D%B4%ED%84%B0-%EC%84%A4%EC%A0%95).
3. Run command.
    ```
    short_sns $ flutter run
    ```

## Android emulator
1. Install [`Android Studio`](https://developer.android.com/studio).
2. Add new [`hardware - Galaxy Note 20`](https://ddolcat.tistory.com/941) from [`Galaxy_Note20`](./Galaxy_Note20/).
3. Run android emulator with Device manager.
4. Run flutter.
5. If the INSTALL_FAILED_INSUPERATIVE_STORAGE error occurs, refer to [`this page`](https://jvvp.tistory.com/1122).<br>
In my case, set VM heap 256MB and Internal Storage 2048MB.