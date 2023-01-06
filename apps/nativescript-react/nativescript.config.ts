import { NativeScriptConfig } from '@nativescript/core';

export default {
  id: 'org.nativescript.react',
  appResourcesPath: '../../tools/App_Resources',
	android: {
		v8Flags: '--expose_gc',
    markingMode: 'none',
    codeCache: true,
    suppressCallJSMethodExceptions: false
  },
  ios: {
    discardUncaughtJsExceptions: false
  },
	appPath: 'src',
  cli: {
    packageManager: 'yarn'
  }
} as NativeScriptConfig;