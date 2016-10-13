#include "stdafx.h"
#include <mysql_connection.h> 
#include <cppconn/driver.h> 
#include <cppconn/exception.h> 
#include <cppconn/resultset.h> 
#include <cppconn/statement.h>
 
using namespace std; 
 
int _tmain(int argc, _TCHAR* argv[])
{
    try { 
        sql::Driver *driver; 
        sql::Connection *con; 
        sql::Statement *stmt; 
        sql::ResultSet *res; 
        sql::PreparedStatement *pstmt;
         
        driver = get_driver_instance(); 
        con = driver->connect("localhost", "user_name", "password"); 
        //选择要连接的数据库 
        con->setSchema("test");
         //设置字符格式
        con->setClientOption("characterSetResults", "utf8");
        stmt = con->createStatement(); 
        res = stmt->executeQuery("SELECT * from user"); 
        //遍历结果集 
        while (res->next())  
        { 
            //这里的ID是user表中的字段名
            int id = res->getInt("ID");
            cout<<id<<endl;
             
 
        }
        delete res; 
        delete stmt;
        delete con; 
    } catch (sql::SQLException &e) { 
        //有异常的情况下，输出异常 
        cout << "# ERR: SQLException in " << __FILE__; 
        cout << "(" << __FUNCTION__ << ") on line "  
            << __LINE__ << endl; 
        cout << "# ERR: " << e.what(); 
        cout << " (MySQL error code: " << e.getErrorCode(); 
        cout << ", SQLState: " << e.getSQLState() << " )" << endl; 
    } 
    return 0;
}