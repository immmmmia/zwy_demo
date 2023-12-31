# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from t4ac_msgs/Bounding_Box_3D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import t4ac_msgs.msg

class Bounding_Box_3D(genpy.Message):
  _md5sum = "c8498b5ba07dec6489238ee817db1326"
  _type = "t4ac_msgs/Bounding_Box_3D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Techs4AgeCar project

string                           type         # Object type
float64                          score        # Object probability (0 to 1)

geometry_msgs/PoseWithCovariance pose         # Centroid x,y,z, yaw (Laser frame)
float64                          l            # Object length (Originally along x-laser frame)
float64                          w            # Object width (Originally along y-laser frame)
float64                          h            # Object height (z-laser frame)
Node[]                           corners_3d   # 3D bbox coordinates (x,y,z ; Laser frame)
float64                          vel_lin      # Absolute global linear velocity
float64                          vel_ang      # Absolute global angular velocity


================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: t4ac_msgs/Node
## Node definition 

float64 x	# X
float64 y	# Y
float64 z	# Z
"""
  __slots__ = ['type','score','pose','l','w','h','corners_3d','vel_lin','vel_ang']
  _slot_types = ['string','float64','geometry_msgs/PoseWithCovariance','float64','float64','float64','t4ac_msgs/Node[]','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       type,score,pose,l,w,h,corners_3d,vel_lin,vel_ang

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Bounding_Box_3D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.type is None:
        self.type = ''
      if self.score is None:
        self.score = 0.
      if self.pose is None:
        self.pose = geometry_msgs.msg.PoseWithCovariance()
      if self.l is None:
        self.l = 0.
      if self.w is None:
        self.w = 0.
      if self.h is None:
        self.h = 0.
      if self.corners_3d is None:
        self.corners_3d = []
      if self.vel_lin is None:
        self.vel_lin = 0.
      if self.vel_ang is None:
        self.vel_ang = 0.
    else:
      self.type = ''
      self.score = 0.
      self.pose = geometry_msgs.msg.PoseWithCovariance()
      self.l = 0.
      self.w = 0.
      self.h = 0.
      self.corners_3d = []
      self.vel_lin = 0.
      self.vel_ang = 0.

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
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.score, _x.pose.pose.position.x, _x.pose.pose.position.y, _x.pose.pose.position.z, _x.pose.pose.orientation.x, _x.pose.pose.orientation.y, _x.pose.pose.orientation.z, _x.pose.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.pose.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.l, _x.w, _x.h))
      length = len(self.corners_3d)
      buff.write(_struct_I.pack(length))
      for val1 in self.corners_3d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2d().pack(_x.vel_lin, _x.vel_ang))
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
      if self.pose is None:
        self.pose = geometry_msgs.msg.PoseWithCovariance()
      if self.corners_3d is None:
        self.corners_3d = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.score, _x.pose.pose.position.x, _x.pose.pose.position.y, _x.pose.pose.position.z, _x.pose.pose.orientation.x, _x.pose.pose.orientation.y, _x.pose.pose.orientation.z, _x.pose.pose.orientation.w,) = _get_struct_8d().unpack(str[start:end])
      start = end
      end += 288
      self.pose.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.l, _x.w, _x.h,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.corners_3d = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.corners_3d.append(val1)
      _x = self
      start = end
      end += 16
      (_x.vel_lin, _x.vel_ang,) = _get_struct_2d().unpack(str[start:end])
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
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.score, _x.pose.pose.position.x, _x.pose.pose.position.y, _x.pose.pose.position.z, _x.pose.pose.orientation.x, _x.pose.pose.orientation.y, _x.pose.pose.orientation.z, _x.pose.pose.orientation.w))
      buff.write(self.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.l, _x.w, _x.h))
      length = len(self.corners_3d)
      buff.write(_struct_I.pack(length))
      for val1 in self.corners_3d:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2d().pack(_x.vel_lin, _x.vel_ang))
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
      if self.pose is None:
        self.pose = geometry_msgs.msg.PoseWithCovariance()
      if self.corners_3d is None:
        self.corners_3d = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.score, _x.pose.pose.position.x, _x.pose.pose.position.y, _x.pose.pose.position.z, _x.pose.pose.orientation.x, _x.pose.pose.orientation.y, _x.pose.pose.orientation.z, _x.pose.pose.orientation.w,) = _get_struct_8d().unpack(str[start:end])
      start = end
      end += 288
      self.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 24
      (_x.l, _x.w, _x.h,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.corners_3d = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.corners_3d.append(val1)
      _x = self
      start = end
      end += 16
      (_x.vel_lin, _x.vel_ang,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
