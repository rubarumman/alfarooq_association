// ignore_for_file: constant_identifier_names

enum HttpMethod{
Get,
Post,
Put,
Patch,
Delete
}



enum EndPoints{
login,

}


String baseUrl="http://phpstack-705695-3880465.cloudwaysapps.com/api/Auth/Controller/";

Map<String,String> vHeader={
       'Content-type': 'application/json',
       'Accept': 'application/json',
       'Accept-Language':"ar"
       };