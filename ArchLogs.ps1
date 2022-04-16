# В переменную $date сохраняем актуальную дату
$date = Get-Date -Format yyyyMMdd

# В переменную $backup_logs сохраняем путь и имя архива с логами который будем создавать
$backup_logs = "C:\ArchLogs\Backup\" + "BackUp_logs" + $date + ".zip"

# В переменную $source_tmp сохраняем путь к временно создаваемой папке Temp
$source_tmp = "C:\ArchLogs\Temp"

# Проверяем наличие дирекории C:\ArchLogs\Temp. Если её нет - создаем, если есть выходим из условия
if (!(Test-Path $source_tmp)) {
    New-Item -Path $source_tmp -ItemType Directory   
} else {
    break
}

# Копируем в C:\ArchLogs\Temp нужные файлы логов. Если такие файлы есть в директории, перезаписываем их на новые
Copy-Item -Filter Application.evtx, Security.evtx, System.evtx -Path C:\System32\Winevt\Logs\ -Recurse -Destination C:\ArchLogs\Temp -Force

# Архивируем C:\ArchLogs\Temp и задаем для архива имя из $backup_logs
Compress-Archive -Path $source_tmp -DestinationPath $backup_logs -CompressionLevel Optimal

# Здесь нужна проверка корректности создания архива

# Удаляем временный каталог Temp 
Remove-Item -Path $source_tmp -Recurse
