import { Observable } from '@nativescript/core'
import { Color } from "@nativescript/core";
import { setupLamp, ISwiftLamp } from '@lava/nativescript-lamp';
setupLamp();

export class HelloWorldModel extends Observable {
  data: ISwiftLamp = {
    gradientTopColor: new Color('#4377c1').ios,
    gradientMiddleColor: new Color('#4377c1').ios,
    gradientBottomColor: new Color('#81b1f3').ios,
  };
}
