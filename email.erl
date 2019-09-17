-module(email). 
-export([start/0]). 

start() -> 
   gen_smtp_client:send({"crupib@gmail.com", ["crupib@hotmail.com"], "Subject: testing"},
   
   [{relay, "smtp.gmail.com"}, {ssl, true}, {username, "crupib@gmail.com"}, 
      {password, "Paul6464!"}]).
