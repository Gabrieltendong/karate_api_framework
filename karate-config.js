function (){

    var env = karate.env;

    if(!env){
        env="dev"
    }
    var config = {
            baseUrl: 'https://ztrain-shop.herokuapp.com',
    }

    var result = karate.callSingle('file:src/test/resources/features/user/login.feature', config);
    config.authInfo = { authorization: "Bearer " + result.token };

    return config
}