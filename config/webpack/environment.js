const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environnement.plugins.append('Provide',
  new.webpack.ProvidePlugin:{
    $: "jquery/src/jquery",
    jQuery:'jquery/src/jquery'
  })
)
module.exports = environment
