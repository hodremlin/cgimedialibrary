var path = require('path')
var webpack = require('webpack')

module.exports = {
  context: __dirname,
  entry: {
    bundle: './webpack/bundle.js',
  },
  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts', 'webpack'),
    filename: '[name].js',
    publicPath: '/js/'
  },
  module: {
    rules: [
      { test: /\.js$/, exclude: /node_modules/, loader: "babel-loader" }
    ]
  },
  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: JSON.stringify('production')
      }
    }),
    new webpack.optimize.UglifyJsPlugin({
      compress: {
        warnings: false
      }
    })
  ],
  resolve: {
    modules: [
      path.join(__dirname, "..", "webpack"),
      "node_modules"
    ]
  }
}