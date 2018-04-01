WorkerScript.onMessage = function(message) {
    var theModel = message.target;
    if(message.action === "init") {
        theModel.clear();
    }
    else if(message.action === "add") {
        theModel.append({"cardImg":message.cardSrc.toString(),"cardDate":message.cardDate,"cardDetial":message.cardDetail,"cardIndex":message.cardIndex});
    }
    theModel.sync();
}
