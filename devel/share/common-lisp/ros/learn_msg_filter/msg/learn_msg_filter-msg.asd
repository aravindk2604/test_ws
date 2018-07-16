
(cl:in-package :asdf)

(defsystem "learn_msg_filter-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NewString" :depends-on ("_package_NewString"))
    (:file "_package_NewString" :depends-on ("_package"))
  ))