.class public final synthetic Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic f$0:Ldev/delta/quest/MainActivity;


# direct methods
.method public synthetic constructor <init>(Ldev/delta/quest/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda37;->f$0:Ldev/delta/quest/MainActivity;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    iget-object p0, p0, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda37;->f$0:Ldev/delta/quest/MainActivity;

    invoke-static {p0, p1, p2, p3}, Ldev/delta/quest/MainActivity;->$r8$lambda$longArmsSliderChange(Ldev/delta/quest/MainActivity;Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
