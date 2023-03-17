
(cl:in-package :asdf)

(defsystem "navigation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geographic_msgs-msg
)
  :components ((:file "_package")
    (:file "Compass" :depends-on ("_package_Compass"))
    (:file "_package_Compass" :depends-on ("_package"))
    (:file "GeoPointRange" :depends-on ("_package_GeoPointRange"))
    (:file "_package_GeoPointRange" :depends-on ("_package"))
    (:file "Prop" :depends-on ("_package_Prop"))
    (:file "_package_Prop" :depends-on ("_package"))
    (:file "PropArray" :depends-on ("_package_PropArray"))
    (:file "_package_PropArray" :depends-on ("_package"))
    (:file "PropInProgress" :depends-on ("_package_PropInProgress"))
    (:file "_package_PropInProgress" :depends-on ("_package"))
    (:file "SimpleGPS" :depends-on ("_package_SimpleGPS"))
    (:file "_package_SimpleGPS" :depends-on ("_package"))
    (:file "yolo" :depends-on ("_package_yolo"))
    (:file "_package_yolo" :depends-on ("_package"))
  ))