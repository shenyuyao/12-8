const express = require('express');
var mysql = require('mysql');
//读取输入的form表单
var bodyParser = require('body-parser');
var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
	extended: false
}))
//创建连接池  createConnection只能用一次，一般用createPool
var db = mysql.createPool({
	host: 'localhost',
	port: 3307,
	user: 'root',
	password: 'root',
	database: 'newdata'
})

app.set('view engine', 'ejs') //设置模板引擎为ejs
app.use('/', express.static('public'))
app.get('/', (req, res) => { //首页
	db.query('SELECT * FROM `yf`', function(err, data) {
		if(err) {
			console.log(err)
		} else {
			res.render('index', {
				movies: data
			})
		}
	})
})
app.get('/detail/:id', (req, res) => { //详情页
	let id = req.params.id; //let避免全局污染
	db.query(`SELECT *FROM yf WHERE id = ${id}`, function(err, data) {
		if(err) {
			console.log(err);
		} else {
			res.render('detail', {
				movies: data[0]
			})
		}
	})
})
app.listen(3000)