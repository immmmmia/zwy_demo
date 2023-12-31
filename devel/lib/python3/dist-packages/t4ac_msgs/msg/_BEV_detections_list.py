# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from t4ac_msgs/BEV_detections_list.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import t4ac_msgs.msg

class BEV_detections_list(genpy.Message):
  _md5sum = "759bec6ecb814309c94289f28049e196"
  _type = "t4ac_msgs/BEV_detections_list"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Techs4AgeCar project

Header header                       # Frame and timestamp information

float64 front                       # BEV grid size (front, back, left, right in meters)
float64 back
float64 left
float64 right

BEV_detection[] bev_detections_list # List of bev_obstacles

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: t4ac_msgs/BEV_detection
# Techs4AgeCar project

string type         # Object type
float64 score       # Object probability (0 to 1)
uint16 object_id    # Object ID 

float64   x         # BEV x centroid
float64   y         # BEV y centroid 
float64   vel_lin   # (Only Groundtruth) Linear velocity (Module of vx and vy)
float64   vel_ang   # (Only Groundtruth) Angular velocity (Z-axis)
float64[] tl_br     # 2D bbox top-left, bottom-right xy coordinates
float64[] x_corners # 3D bbox x coordinates of the corners
float64[] y_corners # 3D bbox y coordinates of the corners
float64   l         # BEV length of the object
float64   w         # BEV width of the object
float64   o         # Object orientation

bool safety_zone    # If true, the detection is very near the vehicle 
                    # Evaluate the predicted collision with this detection


"""
  __slots__ = ['header','front','back','left','right','bev_detections_list']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','t4ac_msgs/BEV_detection[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,front,back,left,right,bev_detections_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BEV_detections_list, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.front is None:
        self.front = 0.
      if self.back is None:
        self.back = 0.
      if self.left is None:
        self.left = 0.
      if self.right is None:
        self.right = 0.
      if self.bev_detections_list is None:
        self.bev_detections_list = []
    else:
      self.header = std_msgs.msg.Header()
      self.front = 0.
      self.back = 0.
      self.left = 0.
      self.right = 0.
      self.bev_detections_list = []

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4d().pack(_x.front, _x.back, _x.left, _x.right))
      length = len(self.bev_detections_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.bev_detections_list:
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_dH4d().pack(_x.score, _x.object_id, _x.x, _x.y, _x.vel_lin, _x.vel_ang))
        length = len(val1.tl_br)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.tl_br))
        length = len(val1.x_corners)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.x_corners))
        length = len(val1.y_corners)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.y_corners))
        _x = val1
        buff.write(_get_struct_3dB().pack(_x.l, _x.w, _x.o, _x.safety_zone))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bev_detections_list is None:
        self.bev_detections_list = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.front, _x.back, _x.left, _x.right,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bev_detections_list = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.BEV_detection()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        _x = val1
        start = end
        end += 42
        (_x.score, _x.object_id, _x.x, _x.y, _x.vel_lin, _x.vel_ang,) = _get_struct_dH4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.tl_br = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x_corners = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y_corners = s.unpack(str[start:end])
        _x = val1
        start = end
        end += 25
        (_x.l, _x.w, _x.o, _x.safety_zone,) = _get_struct_3dB().unpack(str[start:end])
        val1.safety_zone = bool(val1.safety_zone)
        self.bev_detections_list.append(val1)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4d().pack(_x.front, _x.back, _x.left, _x.right))
      length = len(self.bev_detections_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.bev_detections_list:
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_dH4d().pack(_x.score, _x.object_id, _x.x, _x.y, _x.vel_lin, _x.vel_ang))
        length = len(val1.tl_br)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.tl_br.tostring())
        length = len(val1.x_corners)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.x_corners.tostring())
        length = len(val1.y_corners)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.y_corners.tostring())
        _x = val1
        buff.write(_get_struct_3dB().pack(_x.l, _x.w, _x.o, _x.safety_zone))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.bev_detections_list is None:
        self.bev_detections_list = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.front, _x.back, _x.left, _x.right,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bev_detections_list = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.BEV_detection()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        _x = val1
        start = end
        end += 42
        (_x.score, _x.object_id, _x.x, _x.y, _x.vel_lin, _x.vel_ang,) = _get_struct_dH4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.tl_br = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x_corners = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y_corners = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _x = val1
        start = end
        end += 25
        (_x.l, _x.w, _x.o, _x.safety_zone,) = _get_struct_3dB().unpack(str[start:end])
        val1.safety_zone = bool(val1.safety_zone)
        self.bev_detections_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3dB = None
def _get_struct_3dB():
    global _struct_3dB
    if _struct_3dB is None:
        _struct_3dB = struct.Struct("<3dB")
    return _struct_3dB
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_dH4d = None
def _get_struct_dH4d():
    global _struct_dH4d
    if _struct_dH4d is None:
        _struct_dH4d = struct.Struct("<dH4d")
    return _struct_dH4d
