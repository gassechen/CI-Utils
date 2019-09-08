---
layout: page
title: API Documentation
meta-description: The API Documentation for the CI-UtilsCommon Lisp library.
---


<br>
### <a name="package-ci-utils"></a>**PACKAGE** - CI-UTILS 

<a name="function-ci-utils:cip"></a>**FUNCTION** - CIP   
Whether lisp is running on a CI platform.

<a name="function-ci-utils:platform"></a>**FUNCTION** - PLATFORM   
Returns the current CI platform.  When on a non-ci platform, nil is returned.

<a name="function-ci-utils:pull-request-p"></a>**FUNCTION** - PULL-REQUEST-P   
Returns whether the build is for a pull/merge request.  Unknown and non-ci
   platforms are considered to not be pull requests.  A string containing the
   pull request number is returned for pull requests

<a name="function-ci-utils:branch"></a>**FUNCTION** - BRANCH   
Returns the name of the branch the build is from, or `NIL` for unknown and
   non-ci platforms.

<a name="function-ci-utils:build-dir"></a>**FUNCTION** - BUILD-DIR   
Returns the directory that the code was copied into.  When not on a known CI
   platform, the current working directory is returned.

<br>
### <a name="package-ci-utils/coveralls"></a>**PACKAGE** - CI-UTILS/COVERALLS 

<a name="function-ci-utils/coveralls:coverage-excluded"></a>**FUNCTION** - COVERAGE-EXCLUDED   
Gets the contents of the COVERAGE_EXCLUDED environemental variable as a list
   of path strings

<a name="function-ci-utils/coveralls:coverallsp"></a>**FUNCTION** - COVERALLSP   
Whether the current systems has the `COVERALLS` environmental variable set

<a name="macro-ci-utils/coveralls:with-coveralls"></a>**MACRO** - WITH-COVERALLS (EXCLUDE &BODY BODY)  
Wraps the body with the `coveralls:with-coveralls` macro if coveralls is enabled

