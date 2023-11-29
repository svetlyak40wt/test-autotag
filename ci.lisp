(uiop:define-package #:test-autotag/ci
  (:use #:cl)
  (:import-from #:40ants-ci/workflow
                #:defworkflow)
  (:import-from #:40ants-ci/jobs/linter
                #:linter)
  (:import-from #:40ants-ci/jobs/run-tests
                #:run-tests)
  (:import-from #:40ants-ci/jobs/docs
                #:build-docs)
  (:import-from #:40ants-ci/jobs/autotag
                #:autotag))
(in-package #:test-autotag/ci)


(defworkflow release
  :on-push-to "main"
  :jobs ((autotag)))
