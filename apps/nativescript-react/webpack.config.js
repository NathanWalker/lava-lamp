const webpack = require("@nativescript/webpack");

module.exports = (env) => {
	webpack.init(env);
	webpack.useConfig('react');

	// Learn how to customize:
	// https://docs.nativescript.org/webpack

	return webpack.resolveConfig();
};
