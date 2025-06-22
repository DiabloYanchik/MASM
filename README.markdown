# 😡 MASM64 и C++: Проклятый ад ассемблера

![Status](https://img.shields.io/badge/Status-Dead%20and%20Buried-red) ![Language](https://img.shields.io/badge/Language-MASM64%20%26%20C%2B%2B-blueviolet?logo=visual-studio-code) ![Platform](https://img.shields.io/badge/Platform-Windows%20x64-blue?logo=windows)

Это мой личный билет в ад! Репозиторий — вопль боли от работы с 64-битным MASM и C++, которые я проклинаю до конца своих дней. Эти задания высосали мою душу, и я клянусь на крови: НИКОГДА больше не прикоснусь к этому ujdye! 😤

---

## 🔥 Ассемблер — гнилое дно

Ассемблер — это как вырезать код на ржавом гвозде. Каждая строка — как удар молотком по пальцу. Регистры? Ловушки для идиотов. `shadow space`? Издевательство, придуманное садистами. Зачем писать `mov rcx, 10`, если в JavaScript это `a + b`? MASM64 с его `A2008: syntax error` — это как ткнуть лицо в кактус. Дебаг? Это как искать смысл жизни в пустыне без воды! 💣

## 🤬 C++ — мерзость похуже

C++ — это ассемблер, который надел маску "я крутой язык" и провалился. `using namespace std`? Это как открыть канализацию в своём коде. `__int64` вместо `int64_t`? C++, ты что, из музея динозавров? Интеграция с MASM — это как пытаться поженить свинью и трактор. Результат? Ошибки линковки, слёзы и желание разбить ноутбук об стену. 😵

## 😣 Мои мучения

Каждое задание — как прогул Buster Keaton. Ночи напролёт я боролась с `main PROC`, который выдавал `syntax error`, и `kernel32.lib`, который пропадал, как призрак. Документация Windows API? Это как читать заклинания на мёртвом языке. Visual Studio Code? Бесполезный текстовый редактор, который смеётся над тобой, пока ты ищешь компилятор! Часами ковырялась с `WriteConsoleA` и `CreateFileA` — ради ЧЕГО? Чтобы вывести "Hello" или создать пустой файл? Я чуть не выкинула ноут из окна! 😡

---

## 📋 Задания (проклятые)

| № | Задание | Файлы | Описание | Страдания |
|---|---------|-------|----------|-----------|
| 1 | Удвоение числа | `double_number.asm`, `main.cpp`, `double.asm` | Число удваивается (сдвиг влево). MASM64 и C++. | `shadow space` — садизм! `__int64` — позор C++. Интеграция? Хотела разбить клавиатуру! |
| 2 | Сложение чисел | `add_numbers.asm`, `hello.asm` | `RCX` + `RDX` = `RAX`. | Ошибки `A2008`, `A2088` — мои демоны! Дебаг? Ха, смешно! |
| 3 | Вывод в консоль | `write_console.asm` | "Hello, Assembly World!" через `WriteConsoleA`. | `WriteConsoleA` — форма для пыток! `28h`? Гуглила в агонии! |
| 4 | Создание файла | `create_file.asm` | Создаёт `test.txt` через `CreateFileA`. | Семь параметров? Это роман! Без проверки? Ноут в опасности! |

---

## 🛠️ Сборка и запуск

1. **Окружение**: Visual Studio Code, MASM (`ml64`), Windows SDK. VSC — просто текстовый редактор, а компилятор ищи сам! 😖
2. **Команда сборки** (в **x64 Native Tools Command Prompt**):
   ```bash
   ml64 filename.asm /link /subsystem:console /entry:main /libpath:"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30133\lib\x64" kernel32.lib
   ```
   - Для задания 1: `ml64 double.asm /c`, затем `cl main.cpp double.obj /link /subsystem:console`.
   - Путь к библиотекам зависит от версии Visual Studio.
3. **Запуск**: `filename.exe`. Но лучше не надо — нервы дорstat: * Today's date and time is 06:56 PM EEST on Sunday, June 22, 2025.
