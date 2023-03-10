// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v5.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif


/// Generated class from Pigeon.
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol UserDefaultsApi {
  func remove(key: String)
  func setBool(key: String, value: Bool)
  func setDouble(key: String, value: Double)
  func setValue(key: String, value: Any)
  func getAll() -> [String?: Any?]
  func clear()
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class UserDefaultsApiSetup {
  /// The codec used by UserDefaultsApi.
  /// Sets up an instance of `UserDefaultsApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: UserDefaultsApi?) {
    let removeChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.remove", binaryMessenger: binaryMessenger)
    if let api = api {
      removeChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let keyArg = args[0] as! String
        api.remove(key: keyArg)
        reply(wrapResult(nil))
      }
    } else {
      removeChannel.setMessageHandler(nil)
    }
    let setBoolChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.setBool", binaryMessenger: binaryMessenger)
    if let api = api {
      setBoolChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let keyArg = args[0] as! String
        let valueArg = args[1] as! Bool
        api.setBool(key: keyArg, value: valueArg)
        reply(wrapResult(nil))
      }
    } else {
      setBoolChannel.setMessageHandler(nil)
    }
    let setDoubleChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.setDouble", binaryMessenger: binaryMessenger)
    if let api = api {
      setDoubleChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let keyArg = args[0] as! String
        let valueArg = args[1] as! Double
        api.setDouble(key: keyArg, value: valueArg)
        reply(wrapResult(nil))
      }
    } else {
      setDoubleChannel.setMessageHandler(nil)
    }
    let setValueChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.setValue", binaryMessenger: binaryMessenger)
    if let api = api {
      setValueChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let keyArg = args[0] as! String
        let valueArg = args[1]!
        api.setValue(key: keyArg, value: valueArg)
        reply(wrapResult(nil))
      }
    } else {
      setValueChannel.setMessageHandler(nil)
    }
    let getAllChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.getAll", binaryMessenger: binaryMessenger)
    if let api = api {
      getAllChannel.setMessageHandler { _, reply in
        let result = api.getAll()
        reply(wrapResult(result))
      }
    } else {
      getAllChannel.setMessageHandler(nil)
    }
    let clearChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.UserDefaultsApi.clear", binaryMessenger: binaryMessenger)
    if let api = api {
      clearChannel.setMessageHandler { _, reply in
        api.clear()
        reply(wrapResult(nil))
      }
    } else {
      clearChannel.setMessageHandler(nil)
    }
  }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: FlutterError) -> [Any?] {
  return [
    error.code,
    error.message,
    error.details
  ]
}
