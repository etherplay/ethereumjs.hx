package ethereumjs;

@:jsRequire("ethereumjs-testrpc")
extern class TestRpc{
	//TODO Dynamic?
	static public function provider(option : Dynamic) : web3.Provider;
}