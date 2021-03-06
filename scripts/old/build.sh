#!/bin/bash

set +x
cd LearningMachine

#### BUILD
# if [[ "$TRAVIS_PULL_REQUEST" != "false" || ( "$TRAVIS_BRANCH" != "master" && "$TRAVIS_BRANCH" != hotfix/* ) ]]; then
#     echo "This is a pull request. No deployment will be done."
#     ./gradlew clean testDevDebug -PdisablePreDex -PdevBuild
#     exit $?
# else
# 	echo "Building Staging and Production releases on $TRAVIS_BRANCH"
# 	export BUILD_NUMBER=$TRAVIS_BUILD_NUMBER
# 	./gradlew clean
# 	./gradlew assembleStagingRelease  -PdisablePreDex
# 	./gradlew assembleProductionRelease -PdisablePreDex
# 	exit $?
# fi

echo "This is just building to test. No deployment will be done."
./gradlew clean testDevDebug -PdisablePreDex -PdevBuild
exit $?
