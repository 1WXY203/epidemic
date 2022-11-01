const join =require('path').join;

module.exports = {
    mode:'production',
    entry:join(__dirname,'./src/main.js'),
    output:{
        path:join(__dirname,'/dist'),
        filename:'./[name].js'
    },
    Plugins:[
        new (require('vue-loader').VueLoaderPlugin)(),
        new (require('html-webpack-plugin'))({
            template:join(__dirname,"./public/index.html"),
            filename:'./index.html'
        })
    ],
    module:{
         rules:[
            {test:/\.css$/,use:['style-loader','css-loader']},
            {test:/\.vue$/,use:['vue-loader']},
            {
                test:/\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$/,
                type:'asset',
                generator:{
                    filename:'./image/[hash].[ext]'
                },
                parser:{
                    dataUrlCondition:{
                        maxSize:1024*1024
                    }
                }
            }
         ]
    }
}