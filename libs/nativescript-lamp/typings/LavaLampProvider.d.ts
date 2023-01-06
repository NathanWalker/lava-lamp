declare class LavaLampProvider extends UIViewController implements SwiftUIProvider {

	static alloc(): LavaLampProvider; // inherited from NSObject

	static new(): LavaLampProvider; // inherited from NSObject

	onEvent: (p1: NSDictionary<any, any>) => void; // inherited from SwiftUIProvider

	updateDataWithData(data: NSDictionary<any, any>): void;
}

interface SwiftUIProvider {

	onEvent: (p1: NSDictionary<any, any>) => void;

	updateDataWithData(data: NSDictionary<any, any>): void;
}
declare var SwiftUIProvider: {

	prototype: SwiftUIProvider;
};