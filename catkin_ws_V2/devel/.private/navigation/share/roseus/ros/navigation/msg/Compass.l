;; Auto-generated. Do not edit!


(when (boundp 'navigation::Compass)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'Compass (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::COMPASS")
  (make-package "NAVIGATION::COMPASS"))

(in-package "ROS")
;;//! \htmlinclude Compass.msg.html


(defclass navigation::Compass
  :super ros::object
  :slots (_heading ))

(defmethod navigation::Compass
  (:init
   (&key
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _heading (float __heading))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get navigation::Compass :md5sum-) "9635d0d9f52c085a5bcd934107785851")
(setf (get navigation::Compass :datatype-) "navigation/Compass")
(setf (get navigation::Compass :definition-)
      "float64 heading
")



(provide :navigation/Compass "9635d0d9f52c085a5bcd934107785851")


