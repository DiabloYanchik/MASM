option casemap:none

includelib kernel32.lib
extrn ExitProcess: proc

.code
main proc
    sub rsp, 28h        ; Выравнивание стека (32 байта shadow space + 8 для выравнивания)
    mov ecx, 42         ; Код возврата
    call ExitProcess
main endp
end
