# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from t4ac_msgs/Lane.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import t4ac_msgs.msg

class Lane(genpy.Message):
  _md5sum = "392f655a22f5ea3284af2c1a7aca7f99"
  _type = "t4ac_msgs/Lane"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """## Lane definition (from the Carla library) in ROS message format
#
# Lanes are mapped using PythonAPI from Carla.
# They are made up from one "Way" that determine its left and right bounds

#uint8 speedlimit	# mapped max speed in km/h
Way left		# mapped left boundary
Way right		# mapped right boundary 
string role     	# Role: current, backside, left, right

#--OPTIONAL--
#int32 lane_id 		# lane id from xodr
#bool is_junction	# true if is on a junction 
#float lane_width	# horizontal size of the road

#string type		# mapped type of lanelet

================================================================================
MSG: t4ac_msgs/Way
# Way definition 

Node[] way	# list of nodes


================================================================================
MSG: t4ac_msgs/Node
## Node definition 

float64 x	# X
float64 y	# Y
float64 z	# Z
"""
  __slots__ = ['left','right','role']
  _slot_types = ['t4ac_msgs/Way','t4ac_msgs/Way','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left,right,role

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Lane, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.left is None:
        self.left = t4ac_msgs.msg.Way()
      if self.right is None:
        self.right = t4ac_msgs.msg.Way()
      if self.role is None:
        self.role = ''
    else:
      self.left = t4ac_msgs.msg.Way()
      self.right = t4ac_msgs.msg.Way()
      self.role = ''

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
      length = len(self.left.way)
      buff.write(_struct_I.pack(length))
      for val1 in self.left.way:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.right.way)
      buff.write(_struct_I.pack(length))
      for val1 in self.right.way:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self.role
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.left is None:
        self.left = t4ac_msgs.msg.Way()
      if self.right is None:
        self.right = t4ac_msgs.msg.Way()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.left.way = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.left.way.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.right.way = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.right.way.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.role = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.role = str[start:end]
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
      length = len(self.left.way)
      buff.write(_struct_I.pack(length))
      for val1 in self.left.way:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.right.way)
      buff.write(_struct_I.pack(length))
      for val1 in self.right.way:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self.role
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.left is None:
        self.left = t4ac_msgs.msg.Way()
      if self.right is None:
        self.right = t4ac_msgs.msg.Way()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.left.way = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.left.way.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.right.way = []
      for i in range(0, length):
        val1 = t4ac_msgs.msg.Node()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.right.way.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.role = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.role = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
