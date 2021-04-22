https://localhost/wp-admin/css/

ps -e список процесов (RUN apt-get install -y procps)

systemctl status nginx - статус nginx

nginx -t  для проверки конфигурации Nginx на наличие любых синтаксических или системных ошибок

Запуск, остановка, перезапуск

    nginx -s сигнал

Где сигнал может быть одним из нижеследующих:

    stop — быстрое завершение
    quit — плавное завершение
    reload — перезагрузка конфигурационного файла
    reopen — переоткрытие лог-файлов


Пример докер файла nginx
https://github.com/nginxinc/docker-nginx/blob/04d0c5754673d6880b91e94c3cebaa767d9a1af7/Dockerfile

vim /var/log/nginx/error.log