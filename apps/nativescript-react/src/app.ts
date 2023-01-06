import * as React from 'react';
import { start, registerElement } from 'react-nativescript';
import { SwiftUI } from '@nativescript/swift-ui'
import { MainApp } from './components/MainApp';

// In NativeScript, the app.ts file is the entry point to your application. You
// can use this file to perform app-level initialization, but the primary
// purpose of the file is to pass control to the app’s first module.

// Controls react-nativescript log verbosity.
// - true: all logs;
// - false: only error logs.
Object.defineProperty(global, '__DEV__', { value: false });


registerElement('swiftUI', () => <any>SwiftUI);

start(React.createElement(MainApp, {}, null));

// Do not place any code after the application has been started as it will not
// be executed on iOS.
