const webpack = require("@nativescript/webpack");

module.exports = (env) => {
	webpack.init(env);
	webpack.useConfig('svelte');

	// Learn how to customize:
	// https://docs.nativescript.org/webpack

	return webpack.resolveConfig();
};
