import {
  registerSwiftUI,
  UIDataDriver,
} from '@nativescript/swift-ui';

export interface ISwiftLamp {
  gradientTopColor?: UIColor;
  gradientMiddleColor?: UIColor;
  gradientBottomColor?: UIColor;
}

export function setupLamp() {
  registerSwiftUI(
    'lavaLamp',
    (view) =>
      new UIDataDriver(LavaLampProvider.new(), view)
  );
}
