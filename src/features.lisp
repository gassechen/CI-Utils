;;; Push the new features

(when (uiop:getenvp "CI")
  (pushnew :ci *features*)
  (pushnew (cond
             ((uiop:getenvp "TRAVIS") :travis-ci)
             ((uiop:getenvp "CIRCLECI") :circleci)
             ((uiop:getenvp "APPVEYOR") :appveyor)
             ((uiop:getenvp "GITLAB_CI") :gitlab-ci)
             ((uiop:getenvp "BITBUCKET_BUILD_NUMBER") :bitbucket-pipelines)
             ((string-equal "true" (uiop:getenv "TF_BUILD")) :azure-pipelines)
             (t :unknown-ci))
           *features*))

(when (uiop:getenvp "COVERALLS")
  (pushnew :coveralls *features*))
