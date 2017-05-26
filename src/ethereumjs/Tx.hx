package ethereumjs;

typedef SignedTransaction = Dynamic;

@:jsRequire("ethereumjs-tx")
extern class Tx{
	
	public var nonce: String;
  public var gasPrice: String; 
  public var gasLimit: String;
  public var to: String;
  public var value: String; 
  public var data: String;

	public function new(?rawTx : Dynamic);
	public function sign(privateKey : js.node.buffer.Buffer) : Void;
	public function serialize() : SignedTransaction;
	public function verifySignature() : Bool;
}