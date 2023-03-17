# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navigation/yolo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class yolo(genpy.Message):
  _md5sum = "d7d1c0fc76c1db7be4eba6eb5e32d5ef"
  _type = "navigation/yolo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string label
float32 probability
float32 xmin
float32 xmax
float32 ymin
float32 ymax"""
  __slots__ = ['label','probability','xmin','xmax','ymin','ymax']
  _slot_types = ['string','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       label,probability,xmin,xmax,ymin,ymax

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(yolo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.label is None:
        self.label = ''
      if self.probability is None:
        self.probability = 0.
      if self.xmin is None:
        self.xmin = 0.
      if self.xmax is None:
        self.xmax = 0.
      if self.ymin is None:
        self.ymin = 0.
      if self.ymax is None:
        self.ymax = 0.
    else:
      self.label = ''
      self.probability = 0.
      self.xmin = 0.
      self.xmax = 0.
      self.ymin = 0.
      self.ymax = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5f().pack(_x.probability, _x.xmin, _x.xmax, _x.ymin, _x.ymax))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.probability, _x.xmin, _x.xmax, _x.ymin, _x.ymax,) = _get_struct_5f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5f().pack(_x.probability, _x.xmin, _x.xmax, _x.ymin, _x.ymax))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.label = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.label = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.probability, _x.xmin, _x.xmax, _x.ymin, _x.ymax,) = _get_struct_5f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5f = None
def _get_struct_5f():
    global _struct_5f
    if _struct_5f is None:
        _struct_5f = struct.Struct("<5f")
    return _struct_5f
