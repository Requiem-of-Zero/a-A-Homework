var path = require('path');
var path = require('path');

module.exports = {
  context: __dirname,
  entry: './frontend/entry.jsx',
  output: {
    filename: './bundle.js',
    path: path.resolve(__dirname)
  },
  module: {
    rules: [
      {
        test: [/\.jsx?$/],
        exclude: /(node_modules)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/env', '@babel/react']
          }
        },
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};