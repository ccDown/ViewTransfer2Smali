.class final Lcom/orhanobut/logger/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 152
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 155
    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 53
    .local v2, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 54
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 57
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 58
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    .line 57
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 64
    .end local v2    # "length":I
    :cond_4
    return v1
.end method

.method static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const-string v0, ""

    return-object v0

    .line 80
    :cond_0
    move-object v0, p0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_2

    .line 82
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    .line 83
    const-string v1, ""

    return-object v1

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 89
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 92
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 34
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static logLevel(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 110
    const-string v0, "UNKNOWN"

    return-object v0

    .line 108
    :pswitch_0
    const-string v0, "ASSERT"

    return-object v0

    .line 106
    :pswitch_1
    const-string v0, "ERROR"

    return-object v0

    .line 104
    :pswitch_2
    const-string v0, "WARN"

    return-object v0

    .line 102
    :pswitch_3
    const-string v0, "INFO"

    return-object v0

    .line 100
    :pswitch_4
    const-string v0, "DEBUG"

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "VERBOSE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string v0, "null"

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 122
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 125
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 128
    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 131
    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 134
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 137
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 140
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_8
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 143
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_9
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 146
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_a
    const-string v0, "Couldn\'t find a correct type for the object"

    return-object v0
.end method
