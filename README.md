How to Use 
==========

샘플소스 다운받기
-----------------
```
git clone https://github.com/Kangmo/korbit-java-sdk-sample
```

환경변수 설정하기
-----------------
우선, KORBIT_API_PORT 환경변수를 설정해야 합니다.
api.korbit.co.kr:8080 (korbitdevday.co.kr) 로 접속하기 위해서는, KORBIT_API_PORT를 8080으로 설정하세요.
api.korbit.co.kr (korbit.co.kr)로 접속하기 위해서는 KORBIT_API_PORT를 443으로 설정하세요.

그 다음 KORBIT_API_KEY과 KORBIT_API_SECRET환경변수를 설정해야 합니다.
key를 얻기 위해서는 다음 URL을 참고하세요.
https://bitbucket.org/korbit/korbit-api/wiki/Home

마지막으로, KORBIT_API_USERNAME과 KORBIT_API_PASSWORD를 설정해야 합니다.
api.korbit.co.kr:8080 로 접속하시려면, korbitdevday.co.kr에 가입한 email과 암호로 세팅하면 됩니다.
api.korbit.co.kr로 접속하시려면, www.korbit.co.kr에 가입한 email과 암호로 세팅하면 됩니다.

실행하기
--------
위와 같이 환경변수를 설정한 후에 run.sh를 실행하면 됩니다.

샘플 소스코드 위치
------------------
https://github.com/Kangmo/korbit-java-sdk-sample/blob/master/src/main/java/com/test/example/App.java

Set Environment Variables
-------------------------
You need to set KORBIT_API_PORT environment variable.
To connect to api.korbit.co.kr:8080 (korbitdevday.co.kr), set KORBIT_API_PORT to 8080.
To connect to api.korbit.co.kr (korbit.co.kr), set KORBIT_API_PORT to 443.

You need to set KORBIT_API_KEY and KORBIT_API_SECRET environment variable.
To get the key, see the following URL.
https://bitbucket.org/korbit/korbit-api/wiki/Home

You need to set KORBIT_API_USERNAME and KORBIT_API_PASSWORD environment variable.
To connect to api.korbit.co.kr:8080, use your username and password on korbitdevday.co.kr.
To connect to api.korbit.co.kr, use your username and password on www.korbit.co.kr.

How to run
----------
After setting above environment variables, simply execute run.sh

Location of Sample Source Code
------------------------------
https://github.com/Kangmo/korbit-java-sdk-sample/blob/master/src/main/java/com/test/example/App.java
