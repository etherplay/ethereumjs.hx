package ethereumjs;

typedef SignedTransaction = Dynamic;

#if hxnodejs
@:jsRequire("ethereumjs-tx")
#end
extern class Tx{
	
	public var nonce: String;
	public var gasPrice: String; 
	public var gasLimit: String;
	public var to: String;
	public var value: String; 
	public var data: String;

	public function new(?rawTx : Dynamic); //TODO remove DYnamic
	public function sign(privateKey : Dynamic) : Void; //js.node.buffer.Buffer in case of node
	public function serialize() : SignedTransaction;
	public function verifySignature() : Bool;
}