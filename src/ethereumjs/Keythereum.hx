package ethereumjs;

typedef KeyObject = Dynamic;

#if hxnodejs
@:jsRequire("keythereum")
#end
extern class Keythereum{
	static public function importFromFile(address : String, datadir : String) : KeyObject;
	static public function recover(password : String, keyObject : KeyObject) : js.node.buffer.Buffer;

	static public function privateKeyToAddress(privateKey : Dynamic) : String;
	
	@:overload(function(?params : Dynamic ) : Dynamic{})//TODO remove Dynamic
	static public function create(callback : Dynamic -> Void) : Void; //TODO remove Dynamic + allow to pass params before callback
}
