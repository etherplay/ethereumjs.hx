package ethereumjs;


import web3.Web3;

class Util{
	
	public static function evm_snapshot(_web3 : Web3, cb : Dynamic -> String -> Void ){
		untyped _web3.currentProvider.sendAsync({
			jsonrpc: "2.0",
			method: "evm_snapshot",
			id: 12345
		}, function(err, result){
			if(err){
				cb(err, null);
			}else{
				cb(null, result.result);
			}
		});
	}

	public static function evm_revert(_web3 : Web3, snapshotId,cb : Dynamic -> Dynamic -> Void){
		untyped _web3.currentProvider.sendAsync({
			jsonrpc: "2.0",
			method: "evm_revert",
			params:[snapshotId],
			id: 12346
		}, cb);
	}
	
	
	static var oldGetTime : Dynamic;
	 
	public static function setTime(timeInSec : Float){
		if(oldGetTime == null){
			oldGetTime = untyped Date.prototype.getTime;
		}
		untyped Date.prototype.getTime = function(){return timeInSec * 1000;}	
	}
	
}