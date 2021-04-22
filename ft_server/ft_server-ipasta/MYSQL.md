
mysql - подключение к консоли

запрос к БД для получения базовых данных

SELECT user,authentication_string,plugin,host FROM mysql.user; 

Версия сервера
SELECT VERSION(), CURRENT_DATE;