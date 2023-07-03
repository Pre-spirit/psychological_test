import mysql.connector
from flask_cors import CORS
from flask import Flask, jsonify

MYSQL_CONFIG = {'host': 'localhost', 'user': 'root', 'password': 'root', 'db': 'psychological_test'}

# 创建对象
app = Flask(__name__)
CORS(app, resources={r"/psychological_test/*": {"origins": "*"}})


# 路由的地址
@app.route('/psychological_test/nine_personality_test', methods=['GET'])
def index():
    # return 代表将数据返回给浏览器
    return_data = NinePersonalityTest()
    return jsonify({'data': return_data, 'message': '', 'code': 0})


def NinePersonalityTest():
    myConnection = mysql.connector.connect(
        host=MYSQL_CONFIG['host'],
        user=MYSQL_CONFIG['user'],
        password=MYSQL_CONFIG['password'],
        db=MYSQL_CONFIG['db']
    )

    mydb = myConnection.cursor()
    mydb.execute("SELECT * FROM nine_personality_test")
    myresult = mydb.fetchall()

    return_data = {}
    for x, i in enumerate(myresult):
        return_data[int(x)] = {'id': x+1, 'describe': i[1], 'type': i[3], 'flag': ''}

    return return_data


if __name__ == "__main__":
    # 启动web应用服务,默认端口号是5000
    app.debug = True
    app.run(host='0.0.0.0', port=8000)
