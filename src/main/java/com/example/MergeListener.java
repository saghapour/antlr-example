package com.example;

public class MergeListener extends SqlParserBaseListener{
    private String targetName;
    private String sourceName;
    private String targetAlias;
    private String sourceAlias;
    @Override
    public void enterMergeStatement(SqlParser.MergeStatementContext ctx) {
        super.enterMergeStatement(ctx);
        targetName = ctx.targetName.getText();
        sourceName = ctx.sourceName.getText();

        sourceAlias = ctx.sourceAlias.getText();
        targetAlias = ctx.targetAlias.getText();

    }

    public String getSourceName() {
        return sourceName;
    }

    public String getTargetName() {
        return targetName;
    }

    public String getSourceAlias() {
        return sourceAlias;
    }

    public String getTargetAlias() {
        return targetAlias;
    }
}
