package ethereumjs;

typedef KeyObject = Dynamic;

@:jsRequire("keythereum")
extern class Keythereum{
	static public function importFromFile(address : String, datadir : String) : KeyObject;
	static public function recover(password : String, keyObject : KeyObject) : js.node.buffer.Buffer;
}
