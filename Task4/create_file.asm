; 64-битная MASM-программа, которая открывает/создаёт файл через CreateFileA и закрывает его через CloseHandle
; Ох, какая эпичная задача! Создать файл! Это ж прям хакерский уровень!
option casemap:none        ; casemap:none, потому что мы такие крутые, что различаем буквы.

; Подключаем Windows API
includelib kernel32.lib    ; kernel32.lib, без неё мы как без кислорода.
extrn CreateFileA: proc    ; CreateFileA, потому что юникод (W) для слабаков.
extrn CloseHandle: proc    ; CloseHandle, чтобы не оставлять мусор.
extrn ExitProcess: proc    ; ExitProcess, для пафосного ухода.

.data
filename db "test.txt", 0  ; Имя файла. "test.txt"? 
file_handle dq ?           ; Переменная для дескриптора файла. Как неожиданно.

.code
main PROC                  
    ; Выравниваем стек и резервируем shadow space (32 байта)
    sub rsp, 28h           ; 28h? Почему не 40h? Хотим быть особенными)

    ; 1. Открываем/создаём файл с помощью CreateFileA
    lea rcx, filename      ; Адрес имени файла.
    mov rdx, 0C0000000h    ; GENERIC_READ | GENERIC_WRITE. Бинарная магия!
    mov r8, 0              ; FILE_SHARE_NONE. Никто не тронет наш драгоценный файл!
    mov r9, 0              ; lpSecurityAttributes = NULL. Безопасность? Не, не слышали.
    mov rax, 2             ; CREATE_ALWAYS. Перезапишем файл, плевать на старый!
    mov [rsp+20h], rax     ; Пятый параметр на стек. x64 такой кхм кхм.
    mov rax, 80h           ; FILE_ATTRIBUTE_NORMAL.
    mov [rsp+28h], rax     ; Шестой параметр на стек. Столько возни, зае... ради файла!
    mov rax, 0             ; hTemplateFile = NULL. Зачем это вообще нужно?
    mov [rsp+30h], rax     ; Седьмой параметр на стек. 
    call CreateFileA       ; Создаём файл! Где фанфары?

    ; Сохраняем дескриптор файла
    mov file_handle, rax   ; Пихаем дескриптор в переменную. Регистры не для нас.

    ; 2. Закрываем файл с помощью CloseHandle
    mov rcx, file_handle   ; Дескриптор в RCX. Какой поворот сюжета!
    call CloseHandle       ; Закрываем файл. Ура, миссия выполнена!

    ; 3. Завершаем программу
    mov rcx, 0             ; Код выхода 0. Как трогательно, аж до слёз.
    call ExitProcess       ; Сваливаем. Программа, ты была пустой, как моя голова во время экзамена.

    add rsp, 28h           ; Восстанавливаем стек, хотя это никому не нужно.
    ret                    ; ret? Для красоты, что ли? ExitProcess уже всё решил.
main ENDP
END main                   ; END main. Слава богу, хоть тут не облажались!