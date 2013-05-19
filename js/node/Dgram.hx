package js.node;

/* UDP ........................................ */

typedef DgramCallback = NodeErr->haxe.io.Bytes->Void;

/* 
   Emits: message,listening,close
*/
typedef DgramSocket = { > NodeEventEmitter,
  function send(buf:NodeBuffer,offset:Int,length:Int,port:Int,address:String,cb:NodeUDPCallback):Void;
  function bind(port:Int,?address:String):Void;
  function close():Void;
  function address():Dynamic;
  function setBroadcast(flag:Bool):Void;
  function setTTL(ttl:Int):Void;
  function setMulticastTTL(ttl:Int):Void;
  function setMulticastLoopback(flag:Bool):Void;
  function addMembership(multicastAddress:String,?multicastInterface:String):Void;
  function dropMembership(multicastAddress:String,?multicastInterface:String):Void;
}

extern class Dgram
implements npm.Package.Require<"dgram","*"> {
  // Valid types: udp6, and unix_dgram.
  public static function createSocket(type:String,cb:DgramCallback):DgramSocket;
}
