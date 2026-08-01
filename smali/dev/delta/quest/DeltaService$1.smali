.class Ldev/delta/quest/DeltaService$1;
.super Ljava/lang/Object;
.source "DeltaService.java"

# interfaces
.implements Ldev/delta/quest/AdbManager$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/delta/quest/DeltaService;->requestConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/delta/quest/DeltaService;


# direct methods
.method public static synthetic $r8$lambda$ytTbazak_g9IqxdgWOZjg3Adrjo(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/delta/quest/DeltaService;->-$$Nest$mparseInputLine(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ldev/delta/quest/DeltaService;)V
    .locals 0

    .line 177
    iput-object p1, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 180
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/delta/quest/DeltaService;->-$$Nest$fputconnected(Ldev/delta/quest/DeltaService;Z)V

    .line 181
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/delta/quest/DeltaService;->-$$Nest$fputconnecting(Ldev/delta/quest/DeltaService;Z)V

    .line 182
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetrightTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetleftTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetflying(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetairstrikeActive(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0, v1}, Ldev/delta/quest/DeltaService;->-$$Nest$fputguardianDisabled(Ldev/delta/quest/DeltaService;Z)V

    .line 187
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetpreferences(Ldev/delta/quest/DeltaService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "guardian_disabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetorientationTracker(Ldev/delta/quest/DeltaService;)Ldev/delta/quest/OrientationTracker;

    move-result-object v0

    invoke-virtual {v0}, Ldev/delta/quest/OrientationTracker;->recenter()V

    .line 189
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0, v2}, Ldev/delta/quest/DeltaService;->-$$Nest$mrestorePoseState(Ldev/delta/quest/DeltaService;Z)V

    .line 190
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$mapplyAllPresets(Ldev/delta/quest/DeltaService;)V

    .line 191
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/delta/quest/DeltaService;->-$$Nest$mbroadcastStatus(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetadb(Ldev/delta/quest/DeltaService;)Ldev/delta/quest/AdbManager;

    move-result-object v0

    iget-object p0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    new-instance v1, Ldev/delta/quest/DeltaService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/delta/quest/DeltaService$1$$ExternalSyntheticLambda0;-><init>(Ldev/delta/quest/DeltaService;)V

    const-string p0, "shell:getevent -lt"

    invoke-virtual {v0, p0, v1}, Ldev/delta/quest/AdbManager;->startEventReader(Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V

    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/delta/quest/DeltaService;->-$$Nest$fputconnected(Ldev/delta/quest/DeltaService;Z)V

    .line 198
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0, v1}, Ldev/delta/quest/DeltaService;->-$$Nest$fputconnecting(Ldev/delta/quest/DeltaService;Z)V

    .line 199
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetrightTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetleftTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetflying(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object v0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {v0}, Ldev/delta/quest/DeltaService;->-$$Nest$fgetairstrikeActive(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    iget-object p0, p0, Ldev/delta/quest/DeltaService$1;->this$0:Ldev/delta/quest/DeltaService;

    invoke-static {p0, p1}, Ldev/delta/quest/DeltaService;->-$$Nest$mbroadcastStatus(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V

    return-void
.end method
