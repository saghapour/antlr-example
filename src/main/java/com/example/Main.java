package com.example;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

public class Main {
    public static void main(String[] args) {
        String query = "merge into lakehouse.orders as target using northwind.orders as source";
        SqlLexer lexer = new SqlLexer(CharStreams.fromString(query));
        MergeListener listener = new MergeListener();
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        SqlParser parser = new SqlParser(tokens);
        ParseTreeWalker walker = new ParseTreeWalker();
        walker.walk(listener, parser.mergeStatement());

        System.out.printf("You're merging %s with `%s` alias into %s with `%s` alias.", listener.getSourceName(), listener.getSourceAlias(), listener.getTargetName(), listener.getTargetAlias());
    }
}
