.class Ldev/delta/quest/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/delta/quest/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/delta/quest/MainActivity;


# direct methods
.method constructor <init>(Ldev/delta/quest/MainActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 107
    const-string v2, "dev.moonlit.quest.action.STATUS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v2, v0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    const-string v3, "connected"

    const/4 v4, 0x0

    .line 109
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "connecting"

    .line 110
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    invoke-static {v2, v3, v5}, Ldev/delta/quest/MainActivity;->-$$Nest$mshowConnectionState(Ldev/delta/quest/MainActivity;ZZ)V

    .line 111
    iget-object v6, v0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    const-string v2, "rt_down"

    .line 112
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v2, "lt_down"

    .line 113
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v2, "camera_x"

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v9

    const-string v2, "camera_y"

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    const-string v2, "camera_z"

    const/high16 v3, -0x40800000    # -1.0f

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    .line 111
    invoke-static/range {v6 .. v11}, Ldev/delta/quest/MainActivity;->-$$Nest$mupdateTelemetry(Ldev/delta/quest/MainActivity;ZZFFF)V

    .line 117
    iget-object v12, v0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    const-string v2, "input_rt"

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "input_lt"

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "input_a"

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "input_b"

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "trace_status"

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "probe"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    invoke-static/range {v12 .. v18}, Ldev/delta/quest/MainActivity;->-$$Nest$mupdateDiagnostics(Ldev/delta/quest/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v2, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz v2, :cond_1

    iget-object v2, v0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    sget-object v3, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-static {v2, v3}, Ldev/delta/quest/MainActivity;->-$$Nest$msyncSettingsFromService(Ldev/delta/quest/MainActivity;Ldev/delta/quest/DeltaService;)V

    .line 125
    :cond_1
    const-string v2, "reason"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v0, v0, Ldev/delta/quest/MainActivity$2;->this$0:Ldev/delta/quest/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
