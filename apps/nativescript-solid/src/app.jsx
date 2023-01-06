import { Color } from '@nativescript/core';
import {
  registerSwiftUI,
  SwiftUI,
  UIDataDriver,
} from '@nativescript/swift-ui';
import { registerElement } from 'dominative';

registerElement('swiftUI', SwiftUI);
registerSwiftUI(
  'lavaLamp',
  (view) =>
    new UIDataDriver(LavaLampProvider.new(), view)
);

const App = () => {
  const data = {
    gradientTopColor: new Color('#2c4f7c').ios,
    gradientMiddleColor: new Color('#335d92').ios,
    gradientBottomColor: new Color('#446b9e').ios,
  };
  return (
    <>
      <gridlayout class="bg-black">
          <swiftUI swiftId="lavaLamp" data={data}/>
          <image src="https://www.solidjs.com/img/logo/without-wordmark/logo.png" class="logo"></image>
      </gridlayout>
    </>
  );
};

export { App };