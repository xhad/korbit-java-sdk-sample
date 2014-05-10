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
api.korbit.co.kr:8080 (korbitdevday.herokuapp.com) 로 접속하기 위해서는, KORBIT_API_PORT를 8080으로 설정하세요.
api.korbit.co.kr (www.korbit.co.kr)로 접속하기 위해서는 KORBIT_API_PORT를 443으로 설정하세요.

그 다음 KORBIT_API_KEY과 KORBIT_API_SECRET환경변수를 설정해야 합니다.
key를 얻기 위해서는 다음 URL을 참고하세요.
https://bitbucket.org/korbit/korbit-api/wiki/Home

마지막으로, KORBIT_API_USERNAME과 KORBIT_API_PASSWORD를 설정해야 합니다.
api.korbit.co.kr:8080 로 접속하시려면, korbitdevday.herokuapp.com에 가입한 email과 암호로 세팅하면 됩니다.
api.korbit.co.kr로 접속하시려면, www.korbit.co.kr에 가입한 email과 암호로 세팅하면 됩니다.

실행하기
--------
위와 같이 환경변수를 설정한 후에 run.sh를 실행하면 됩니다.

문제점 해결하기
---------------
run.sh 실행후 다음과 같은 오류가 나는 경우에는, 아래 링크에 나온 대로 명령 두 줄 실행해주시면 문제가 해결됩니다.

```
sun.security.validator.ValidatorException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
```

문제 해결 링크 :
http://notes.richdougherty.com/2013/09/adding-godaddy-g2-root-cert-to-jdk-7.html

샘플 소스코드 위치
------------------
https://github.com/Kangmo/korbit-java-sdk-sample/blob/master/src/main/java/com/test/example/App.java

프로젝트 새로 만들기
--------------------
샘플 프로젝트의 run.sh를 사용하는 대신, 프로젝트를 새로 만들려면(Ex> 이클립스 사용) 다음과 같은 작업들을 해주면 됩니다.

* Korbit SDK를 다운받습니다.
```
wget https://github.com/Kangmo/korbit-scala-sdk/releases/download/v0.1.0-theta/korbit-sdk-v0.1.0-theta.jar
```

* 다운받은 SDK를 Maven으로 설치합니다.
```
mvn install:install-file -Dfile=korbit-sdk-v0.1.0-theta.jar -DgroupId=org.kangmo.tradeapi -DartifactId=korbit-sdk -Dversion=0.1.0 -Dpackaging=jar
```

* 다음과 같이 Maven 디펜던시 설정을 합니다.
```
  <dependencies>
    <dependency>
      <groupId>com.typesafe.akka</groupId>
      <artifactId>akka-actor_2.10</artifactId>
      <version>2.2.0</version>
    </dependency>
    <dependency>
      <groupId>org.kangmo.tradeapi</groupId>
      <artifactId>korbit-sdk</artifactId>
      <version>0.1.0</version>
    </dependency>
    <dependency>
      <groupId>org.scala-lang</groupId>
      <artifactId>scala-library</artifactId>
      <version>2.10.3</version>
    </dependency>
    <dependency>
      <groupId>com.fasterxml.jackson.module</groupId>
      <artifactId>jackson-module-scala_2.10</artifactId>
      <version>2.3.0</version>
    </dependency>
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-databind</artifactId>
      <version>2.3.3</version>
    </dependency>
  </dependencies>
```

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

Troubleshooting
---------------
In case you see following error, simply follow instructions on the following link.
```
sun.security.validator.ValidatorException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
```

Solution :
http://notes.richdougherty.com/2013/09/adding-godaddy-g2-root-cert-to-jdk-7.html

Location of Sample Source Code
------------------------------
https://github.com/Kangmo/korbit-java-sdk-sample/blob/master/src/main/java/com/test/example/App.java
