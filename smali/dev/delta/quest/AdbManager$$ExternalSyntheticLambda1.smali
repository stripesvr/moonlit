.class public final synthetic Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/delta/quest/AdbManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ldev/delta/quest/AdbManager$LineCallback;


# direct methods
.method public synthetic constructor <init>(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$0:Ldev/delta/quest/AdbManager;

    iput-object p2, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$2:Ldev/delta/quest/AdbManager$LineCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$0:Ldev/delta/quest/AdbManager;

    iget-object v1, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;->f$2:Ldev/delta/quest/AdbManager$LineCallback;

    invoke-static {v0, v1, p0}, Ldev/delta/quest/AdbManager;->$r8$lambda$m7Ph5O6715y7P3K5zKmNcZMQY8g(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V

    return-void
.end method
