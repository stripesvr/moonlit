.class final Ldev/delta/quest/DeltaService$ParsedInput;
.super Ljava/lang/Object;
.source "DeltaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/delta/quest/DeltaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedInput"
.end annotation


# instance fields
.field final code:Ljava/lang/String;

.field final device:Ljava/lang/String;

.field final digital:Z

.field final value:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-object p1, p0, Ldev/delta/quest/DeltaService$ParsedInput;->device:Ljava/lang/String;

    .line 814
    iput-object p2, p0, Ldev/delta/quest/DeltaService$ParsedInput;->code:Ljava/lang/String;

    .line 815
    iput p3, p0, Ldev/delta/quest/DeltaService$ParsedInput;->value:I

    .line 816
    iput-boolean p4, p0, Ldev/delta/quest/DeltaService$ParsedInput;->digital:Z

    return-void
.end method

.method static from(Ljava/lang/String;)Ldev/delta/quest/DeltaService$ParsedInput;
    .locals 11

    .line 834
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 836
    const-string v0, "/DEV/INPUT/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    .line 837
    const-string v2, ""

    if-ltz v0, :cond_0

    .line 838
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-le v3, v0, :cond_0

    .line 840
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/16 v3, 0x20

    .line 843
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 844
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return-object v3

    .line 845
    :cond_1
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 847
    const-string v4, "EV_KEY"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    .line 848
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_6

    .line 849
    aget-object v8, v1, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "EV_ABS"

    aget-object v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    add-int/lit8 v8, v7, 0x1

    array-length v9, v1

    if-ge v8, v9, :cond_3

    .line 851
    aget-object v5, v1, v8

    .line 852
    aget-object v7, v1, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    .line 855
    :cond_3
    aget-object v8, v1, v7

    const-string v9, "BTN_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v8, v1, v7

    const-string v10, "ABS_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 856
    :cond_5
    :goto_2
    aget-object v5, v1, v7

    .line 857
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v5

    move-object v5, v3

    :goto_3
    if-nez v5, :cond_8

    .line 861
    array-length v7, v1

    const/4 v8, 0x3

    if-lt v7, v8, :cond_8

    .line 862
    array-length v4, v1

    sub-int/2addr v4, v8

    aget-object v4, v1, v4

    .line 863
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v1, v5

    .line 864
    const-string v7, "0001"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 865
    const-string v8, "0003"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return-object v3

    :cond_7
    move v4, v7

    :cond_8
    if-nez v5, :cond_9

    return-object v3

    .line 869
    :cond_9
    const-string v7, " DOWN"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    move v6, v8

    goto :goto_4

    .line 870
    :cond_a
    const-string v7, " UP"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    .line 873
    :cond_b
    :try_start_0
    array-length p0, v1

    sub-int/2addr p0, v8

    aget-object p0, v1, p0

    const-string v1, "0X"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    .line 874
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v6, v1

    .line 879
    :goto_4
    new-instance p0, Ldev/delta/quest/DeltaService$ParsedInput;

    invoke-direct {p0, v0, v5, v6, v4}, Ldev/delta/quest/DeltaService$ParsedInput;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0

    :catch_0
    return-object v3
.end method


# virtual methods
.method isActive()Z
    .locals 3

    .line 830
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->digital:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget p0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->value:I

    if-eqz v0, :cond_0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method isReleased()Z
    .locals 1

    .line 831
    iget p0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->value:I

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 825
    :cond_0
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService$ParsedInput;->signature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 827
    :cond_1
    iget-object p0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->code:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method signature()Ljava/lang/String;
    .locals 2

    .line 820
    iget-object v0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->device:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/delta/quest/DeltaService$ParsedInput;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ldev/delta/quest/DeltaService$ParsedInput;->code:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
