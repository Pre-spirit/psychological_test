import mysql.connector
from flask_cors import CORS

from flask import Flask, jsonify, request

MYSQL_CONFIG = {'host': 'localhost', 'user': 'root', 'password': 'root', 'db': 'psychological_test'}

# 创建对象
app = Flask(__name__)
CORS(app, resources={r"/psychological_test/*": {"origins": "*"}})


# 路由的地址
@app.route('/psychological_test/nine_personality_result', methods=['POST'])
def result():
    data = request.get_json()['data']
    max_score = max(data, key=data.get)
    mydb = connect_mysql()
    my_result = execute_query(mydb, "SELECT * FROM nine_personality_result where id = " + max_score)

    return jsonify({'data': my_result, 'message': '', 'code': 0})


# 路由的地址
@app.route('/psychological_test/nine_personality_test', methods=['GET'])
def test():
    # return 代表将数据返回给浏览器
    return_data = NinePersonalityTest()


    return jsonify({'data': return_data, 'message': '', 'code': 0})


def NinePersonalityTest():
    # my_connection = mysql.connector.connect(
    #     host=MYSQL_CONFIG['host'],
    #     user=MYSQL_CONFIG['user'],
    #     password=MYSQL_CONFIG['password'],
    #     db=MYSQL_CONFIG['db']
    # )
    #
    # mydb = my_connection.cursor()

    mydb = connect_mysql()
    my_result = execute_query(mydb, "SELECT * FROM nine_personality_test")

    return_data = {}
    for x, i in enumerate(my_result):
        return_data[int(x)] = {'id': x+1, 'describe': i[1], 'type': i[3], 'flag': ''}

    return return_data


def connect_mysql():
    my_connection = mysql.connector.connect(
        host=MYSQL_CONFIG['host'],
        user=MYSQL_CONFIG['user'],
        password=MYSQL_CONFIG['password'],
        db=MYSQL_CONFIG['db']
    )

    return my_connection


def execute_query(conn, query):
    cursor = conn.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    return result


if __name__ == "__main__":
    # 启动web应用服务,默认端口号是5000
    app.debug = True
    app.run(host='0.0.0.0', port=8000)
