.class Ldev/delta/quest/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 39
    iput-object p1, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleAnimationRunning(Ldev/delta/quest/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgetanimatedTitleEnabled(Ldev/delta/quest/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleText(Ldev/delta/quest/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldev/delta/quest/MainActivity;->-$$Nest$sfgetTITLE_FRAMES()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v2}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleFrame(Ldev/delta/quest/MainActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleFrame(Ldev/delta/quest/MainActivity;)I

    move-result v0

    invoke-static {}, Ldev/delta/quest/MainActivity;->-$$Nest$sfgetTITLE_FRAMES()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleFrame(Ldev/delta/quest/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ldev/delta/quest/MainActivity;->-$$Nest$fputtitleFrame(Ldev/delta/quest/MainActivity;I)V

    .line 46
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleHandler(Ldev/delta/quest/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/delta/quest/MainActivity;->-$$Nest$fputtitleFrame(Ldev/delta/quest/MainActivity;I)V

    .line 49
    iget-object v0, p0, Ldev/delta/quest/MainActivity$1;->this$0:Ldev/delta/quest/MainActivity;

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->-$$Nest$fgettitleHandler(Ldev/delta/quest/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
