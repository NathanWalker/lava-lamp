import * as React from "react";
import { Color } from '@nativescript/core';
import { setupLamp, ISwiftLamp } from '@lava/nativescript-lamp';
setupLamp();

const data: ISwiftLamp = {
    gradientTopColor: new Color('#82d8f7').ios,
    gradientMiddleColor: new Color('#82d8f7').ios,
    gradientBottomColor: new Color('#45b5de').ios,
};

export const MainApp = () => (
    <gridLayout className="bg-black">
        <swiftUI swiftId="lavaLamp" data={data} />
        <image src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1024px-React-icon.svg.png?20220125121207" class="logo"></image>
    </gridLayout>
);
