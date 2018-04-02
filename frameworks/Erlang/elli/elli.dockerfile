FROM techempower/erlang:0.1

COPY ./ ./

RUN rebar get-deps
RUN rebar compile

CMD erl -pa ebin deps/*/ebin +sbwt very_long +swt very_low -s elli_bench -noshell
