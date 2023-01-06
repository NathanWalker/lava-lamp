<page>
    <gridLayout class="bg-black">
        <swiftUI swiftId="lavaLamp" data="{data}"/>
        <image src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Svelte_Logo.svg/996px-Svelte_Logo.svg.png?20191219133350" class="logo"></image>
    </gridLayout>
</page>

<script lang="ts">
    import { ISwiftLamp } from '@lava/nativescript-lamp';
    import { Color } from '@nativescript/core';

    const data: ISwiftLamp = {
        gradientTopColor: new Color('#eb4e27').ios,
        gradientMiddleColor: new Color('#eb4e27').ios,
        gradientBottomColor: new Color('#fff').ios,
    };
</script>
