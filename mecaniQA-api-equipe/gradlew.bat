@echo off
set APP_HOME=%~dp0
if exist "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" (
  java -classpath "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
  exit /b %ERRORLEVEL%
)
echo Gradle Wrapper JAR ausente. Rode "gradle wrapper" com Gradle instalado para gerar o wrapper completo.
exit /b 1
