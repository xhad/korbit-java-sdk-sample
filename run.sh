if [[ -z "$KORBIT_API_PORT" ]]
then
	echo "You need to set KORBIT_API_PORT environment variable."
	echo "To connect to api.korbit.co.kr:8080 (korbitdevday.co.kr), set KORBIT_API_PORT to 8080."
	echo "To connect to api.korbit.co.kr (korbit.co.kr), set KORBIT_API_PORT to 443."
	exit
fi

if [[ -z "$KORBIT_API_KEY" ]]
then
	echo "You need to set KORBIT_API_KEY and KORBIT_API_SECRET environment variable."
	echo "To get the key, see the following URL."
	echo "https://bitbucket.org/korbit/korbit-api/wiki/Home"
	exit
fi

if [[ -z "$KORBIT_API_SECRET" ]]
then
	echo "You need to set KORBIT_API_KEY and KORBIT_API_SECRET environment variable."
	echo "To get the key, see the following URL."
	echo "https://bitbucket.org/korbit/korbit-api/wiki/Home"
	exit
fi

if [[ -z "$KORBIT_API_USERNAME" ]]
then
	echo "You need to set KORBIT_API_USERNAME and KORBIT_API_PASSWORD environment variable."
	echo "To connect to api.korbit.co.kr:8080, use your username and password on korbitdevday.co.kr."
	echo "To connect to api.korbit.co.kr, use your username and password on www.korbit.co.kr."
	exit
fi

if [[ -z "$KORBIT_API_PASSWORD" ]]
then
	echo "You need to set KORBIT_API_USERNAME and KORBIT_API_PASSWORD environment variable."
	echo "To connect to api.korbit.co.kr:8080, use your username and password on korbitdevday.co.kr."
	echo "To connect to api.korbit.co.kr, use your username and password on www.korbit.co.kr."
	exit
fi

mvn install:install-file -Dfile=korbit-sdk-v0.1.0-theta.jar -DgroupId=org.kangmo.tradeapi -DartifactId=korbit-sdk -Dversion=0.1.0 -Dpackaging=jar

mvn clean
mvn package
mvn exec:java
