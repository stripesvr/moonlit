.class final Ldev/delta/quest/DeltaService$TraceStat;
.super Ljava/lang/Object;
.source "DeltaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/delta/quest/DeltaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraceStat"
.end annotation


# instance fields
.field count:I

.field final digital:Z

.field maximum:I

.field minimum:I

.field final signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Ldev/delta/quest/DeltaService$TraceStat;->signature:Ljava/lang/String;

    .line 794
    iput-boolean p2, p0, Ldev/delta/quest/DeltaService$TraceStat;->digital:Z

    .line 795
    iput p3, p0, Ldev/delta/quest/DeltaService$TraceStat;->minimum:I

    .line 796
    iput p3, p0, Ldev/delta/quest/DeltaService$TraceStat;->maximum:I

    return-void
.end method


# virtual methods
.method observe(I)V
    .locals 1

    .line 800
    iget v0, p0, Ldev/delta/quest/DeltaService$TraceStat;->minimum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService$TraceStat;->minimum:I

    .line 801
    iget v0, p0, Ldev/delta/quest/DeltaService$TraceStat;->maximum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ldev/delta/quest/DeltaService$TraceStat;->maximum:I

    .line 802
    iget p1, p0, Ldev/delta/quest/DeltaService$TraceStat;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldev/delta/quest/DeltaService$TraceStat;->count:I

    return-void
.end method
