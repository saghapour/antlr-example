parser grammar SqlParser;

options { tokenVocab=SqlLexer; }

mergeStatement
    : MERGE INTO targetName=fullTargetTableName (AS targetAlias=identifier)? USING sourceName=fullTargetTableName (AS sourceAlias=identifier)?
    ;



identifier : (LETTER | DIGIT) (LETTER | DIGIT | UNDERLINE)*;
fullTargetTableName : (sourceDatabase=identifier DOT)* sourceTableName=identifier;
