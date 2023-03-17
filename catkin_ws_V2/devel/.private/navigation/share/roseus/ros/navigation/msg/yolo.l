;; Auto-generated. Do not edit!


(when (boundp 'navigation::yolo)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'yolo (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::YOLO")
  (make-package "NAVIGATION::YOLO"))

(in-package "ROS")
;;//! \htmlinclude yolo.msg.html


(defclass navigation::yolo
  :super ros::object
  :slots (_label _probability _xmin _xmax _ymin _ymax ))

(defmethod navigation::yolo
  (:init
   (&key
    ((:label __label) "")
    ((:probability __probability) 0.0)
    ((:xmin __xmin) 0.0)
    ((:xmax __xmax) 0.0)
    ((:ymin __ymin) 0.0)
    ((:ymax __ymax) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _probability (float __probability))
   (setq _xmin (float __xmin))
   (setq _xmax (float __xmax))
   (setq _ymin (float __ymin))
   (setq _ymax (float __ymax))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float32 _probability
    4
    ;; float32 _xmin
    4
    ;; float32 _xmax
    4
    ;; float32 _ymin
    4
    ;; float32 _ymax
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xmin
       (sys::poke _xmin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xmax
       (sys::poke _xmax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ymin
       (sys::poke _ymin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ymax
       (sys::poke _ymax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xmin
     (setq _xmin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xmax
     (setq _xmax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ymin
     (setq _ymin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ymax
     (setq _ymax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navigation::yolo :md5sum-) "d7d1c0fc76c1db7be4eba6eb5e32d5ef")
(setf (get navigation::yolo :datatype-) "navigation/yolo")
(setf (get navigation::yolo :definition-)
      "string label
float32 probability
float32 xmin
float32 xmax
float32 ymin
float32 ymax
")



(provide :navigation/yolo "d7d1c0fc76c1db7be4eba6eb5e32d5ef")


