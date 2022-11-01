let express  = require('express');
let cors = require('cors');
let app = express();
app.use(cors());

const mysql = require('mysql');


const client=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'qing'
})

app.get('/yiqing',function(req,res){
    //查询数据
    var sql="select * from data";
    //发送
    client.query(sql,function(err,result){
        if(err){
            console.log('请求失败')
            return;
        }
        //成功
        res.send(result)
    })

})

app.listen(8080,function(){
    console.log(8080);
})