@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  blog startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and BLOG_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\blog-1.0-SNAPSHOT.jar;%APP_HOME%\lib\spring-security-core-4.0.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.2.6.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-thymeleaf-1.2.6.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jade4j-0.3.1.jar;%APP_HOME%\lib\spring-boot-starter-redis-1.2.6.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-starter-log4j-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-1.3.0.M5.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-boot-starter-security-1.3.0.M5.jar;%APP_HOME%\lib\spring-context-4.2.1.RELEASE.jar;%APP_HOME%\lib\HikariCP-2.4.3.jar;%APP_HOME%\lib\spring-orm-4.3.0.SPR-13777-SNAPSHOT.jar;%APP_HOME%\lib\hibernate-entitymanager-5.1.0.Final.jar;%APP_HOME%\lib\javax.el-api-3.0.1-b04.jar;%APP_HOME%\lib\parboiled-core-1.1.7.jar;%APP_HOME%\lib\hsqldb-2.3.3.jar;%APP_HOME%\lib\spring-jade4j-0.4.2.jar;%APP_HOME%\lib\spring-security-web-4.0.2.RELEASE.jar;%APP_HOME%\lib\pegdown-1.6.0.jar;%APP_HOME%\lib\jython-standalone-2.7.0.jar;%APP_HOME%\lib\asm-5.0.3.jar;%APP_HOME%\lib\pygments-2.0.2.jar;%APP_HOME%\lib\spring-data-jpa-1.10.0.M1.jar;%APP_HOME%\lib\slf4j-api-1.7.16.jar;%APP_HOME%\lib\spring-data-redis-1.6.0.RELEASE.jar;%APP_HOME%\lib\jedis-2.7.3.jar;%APP_HOME%\lib\mysql-connector-java-5.1.38.jar;%APP_HOME%\lib\hibernate-validator-5.3.0.Alpha1.jar;%APP_HOME%\lib\logback-classic-1.1.3.jar;%APP_HOME%\lib\commons-lang3-3.4.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\modelmapper-0.7.5.jar;%APP_HOME%\lib\asm-tree-5.0.3.jar;%APP_HOME%\lib\lombok-1.16.6.jar;%APP_HOME%\lib\jquery-2.1.4.jar;%APP_HOME%\lib\bootstrap-3.3.5.jar;%APP_HOME%\lib\font-awesome-4.3.0-3.jar;%APP_HOME%\lib\ace-1.2.0.jar;%APP_HOME%\lib\asm-analysis-5.0.3.jar;%APP_HOME%\lib\asm-util-5.0.3.jar;%APP_HOME%\lib\jetty-util-9.2.13.v20150730.jar;%APP_HOME%\lib\spring-boot-starter-validation-1.3.0.M5.jar;%APP_HOME%\lib\spring-web-4.2.1.RELEASE.jar;%APP_HOME%\lib\jetty-security-9.2.13.v20150730.jar;%APP_HOME%\lib\spring-beans-4.3.0.SPR-13777-SNAPSHOT.jar;%APP_HOME%\lib\websocket-api-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-io-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-jsp-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-webapp-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-plus-9.2.13.v20150730.jar;%APP_HOME%\lib\websocket-server-9.2.13.v20150730.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\asm-commons-5.0.1.jar;%APP_HOME%\lib\javax-websocket-server-impl-9.2.13.v20150730.jar;%APP_HOME%\lib\thymeleaf-spring4-2.1.4.RELEASE.jar;%APP_HOME%\lib\tomcat-juli-8.0.26.jar;%APP_HOME%\lib\thymeleaf-layout-dialect-1.2.9.jar;%APP_HOME%\lib\jetty-server-9.2.13.v20150730.jar;%APP_HOME%\lib\jade4j-0.4.3.jar;%APP_HOME%\lib\jetty-jndi-9.2.13.v20150730.jar;%APP_HOME%\lib\jackson-databind-2.6.1.jar;%APP_HOME%\lib\jackson-core-2.6.1.jar;%APP_HOME%\lib\spring-context-support-4.1.7.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.2.1.RELEASE.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.12.jar;%APP_HOME%\lib\spring-tx-4.3.0.SPR-13777-SNAPSHOT.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.12.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\spring-boot-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.3.0.M5.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.3.0.M5.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-aspects-4.2.1.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.2.1.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.16.jar;%APP_HOME%\lib\commons-jexl-2.1.1.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.3.0.M5.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.3.1.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.12.jar;%APP_HOME%\lib\ognl-3.0.8.jar;%APP_HOME%\lib\unbescape-1.1.0.RELEASE.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.26.jar;%APP_HOME%\lib\spring-core-4.3.0.SPR-13777-SNAPSHOT.jar;%APP_HOME%\lib\spring-expression-4.2.1.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-4.3.0.SPR-13777-SNAPSHOT.jar;%APP_HOME%\lib\commons-io-2.1.jar;%APP_HOME%\lib\javax.el-3.0.1-b08.jar;%APP_HOME%\lib\jackson-annotations-2.6.0.jar;%APP_HOME%\lib\parboiled-java-1.1.7.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\classmate-1.3.0.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\aspectjrt-1.8.8.jar;%APP_HOME%\lib\logback-core-1.1.3.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.15.jar;%APP_HOME%\lib\jetty-schemas-3.1.M0.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\javax.servlet.jsp-api-2.3.1.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\javax.servlet.jsp-2.3.2.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-1.2.0.v201105211821.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-1.2.2.jar;%APP_HOME%\lib\org.eclipse.jdt.core-3.8.2.v20130121.jar;%APP_HOME%\lib\commons-pool2-2.3.jar;%APP_HOME%\lib\hibernate-core-5.1.0.Final.jar;%APP_HOME%\lib\jetty-xml-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-servlet-9.2.13.v20150730.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\websocket-common-9.2.13.v20150730.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\websocket-client-9.2.13.v20150730.jar;%APP_HOME%\lib\websocket-servlet-9.2.13.v20150730.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\jetty-http-9.2.13.v20150730.jar;%APP_HOME%\lib\javassist-3.20.0-GA.jar;%APP_HOME%\lib\jetty-annotations-9.2.13.v20150730.jar;%APP_HOME%\lib\javax-websocket-client-impl-9.2.13.v20150730.jar;%APP_HOME%\lib\javax.websocket-api-1.0.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\thymeleaf-2.1.4.RELEASE.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\aspectjweaver-1.8.6.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\xml-apis-1.0.b2.jar;%APP_HOME%\lib\tomcat-jdbc-8.0.26.jar;%APP_HOME%\lib\spring-data-commons-1.12.0.M1.jar;%APP_HOME%\lib\spring-security-config-4.0.2.RELEASE.jar

@rem Execute blog
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %BLOG_OPTS%  -classpath "%CLASSPATH%" com.chengp.blog.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable BLOG_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%BLOG_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
