@echo off
REM Build with MinGW-w64 g++ (Windows)
g++ -std=c++17 -O2 -D_WIN32_WINNT=0x0A00 src\main.cpp src\renderer.cpp src\scene_io.cpp -o scene_renderer.exe -lws2_32 -pthread
if %errorlevel%==0 (echo Built scene_renderer.exe) else (echo Build failed)
