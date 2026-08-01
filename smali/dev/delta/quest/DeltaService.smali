.class public final Ldev/delta/quest/DeltaService;
.super Landroid/app/Service;
.source "DeltaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/delta/quest/DeltaService$ParsedInput;,
        Ldev/delta/quest/DeltaService$TraceStat;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT:Ljava/lang/String; = "dev.moonlit.quest.action.CONNECT"

.field public static final ACTION_STATUS:Ljava/lang/String; = "dev.moonlit.quest.action.STATUS"

.field private static final CHANNEL_ID:Ljava/lang/String; = "delta_engine"

.field public static final EXTRA_CALIBRATION:Ljava/lang/String; = "calibration"

.field public static final EXTRA_CAMERA_X:Ljava/lang/String; = "camera_x"

.field public static final EXTRA_CAMERA_Y:Ljava/lang/String; = "camera_y"

.field public static final EXTRA_CAMERA_Z:Ljava/lang/String; = "camera_z"

.field public static final EXTRA_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_CONNECTING:Ljava/lang/String; = "connecting"

.field public static final EXTRA_INPUT_A:Ljava/lang/String; = "input_a"

.field public static final EXTRA_INPUT_B:Ljava/lang/String; = "input_b"

.field public static final EXTRA_INPUT_LT:Ljava/lang/String; = "input_lt"

.field public static final EXTRA_INPUT_RT:Ljava/lang/String; = "input_rt"

.field public static final EXTRA_LT_DOWN:Ljava/lang/String; = "lt_down"

.field public static final EXTRA_PROBE:Ljava/lang/String; = "probe"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_RT_DOWN:Ljava/lang/String; = "rt_down"

.field public static final EXTRA_TRACE_STATUS:Ljava/lang/String; = "trace_status"

.field public static final MAX_PREDICTION_SECONDS:F = 1.0f

.field private static final MOVEMENT_INTERVAL_MS:J = 0x14L

.field private static final NOTIFICATION_ID:I = 0x2c6

.field public static final PREF_CAR:Ljava/lang/String; = "car_enabled"

.field public static final PREF_CAR_SPEED:Ljava/lang/String; = "car_speed"

.field public static final PREF_FLY_RT:Ljava/lang/String; = "fly_rt_enabled"

.field public static final PREF_FLY_SPEED:Ljava/lang/String; = "fly_speed"

.field public static final PREF_FOVEATION:Ljava/lang/String; = "foveation"

.field public static final PREF_GUARDIAN_DISABLED:Ljava/lang/String; = "guardian_disabled"

.field public static final PREF_INPUT_A:Ljava/lang/String; = "input_mapping_a"

.field public static final PREF_INPUT_B:Ljava/lang/String; = "input_mapping_b"

.field public static final PREF_INPUT_LT:Ljava/lang/String; = "input_mapping_lt"

.field public static final PREF_INPUT_RT:Ljava/lang/String; = "input_mapping_rt"

.field public static final PREF_LONG_ARMS:Ljava/lang/String; = "long_arms_enabled"

.field public static final PREF_LONG_ARMS_OFFSET:Ljava/lang/String; = "long_arms_offset"

.field public static final PREF_MAX_PERFORMANCE:Ljava/lang/String; = "max_performance"

.field public static final PREF_MAX_PREDICTIONS:Ljava/lang/String; = "max_predictions_enabled"

.field public static final PREF_REFRESH_RATE:Ljava/lang/String; = "refresh_rate"

.field public static final PREF_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final PREF_VERTICAL:Ljava/lang/String; = "vertical_enabled"

.field private static final TAG:Ljava/lang/String; = "DeltaService"

.field public static volatile instance:Ldev/delta/quest/DeltaService;


# instance fields
.field private volatile activeTraceTarget:Ljava/lang/String;

.field private adb:Ldev/delta/quest/AdbManager;

.field private final airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private airstrikeStartNanos:J

.field private volatile calibrationArmedNanos:J

.field private volatile calibrationStatus:Ljava/lang/String;

.field private volatile calibrationTarget:Ljava/lang/String;

.field private cameraX:F

.field private cameraY:F

.field private cameraZ:F

.field private volatile carEnabled:Z

.field private volatile carSpeedMode:I

.field private volatile connected:Z

.field private volatile connecting:Z

.field private final flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile flyRtEnabled:Z

.field private volatile flySpeedMode:I

.field private final flying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile foveation:I

.field private volatile guardianDisabled:Z

.field private volatile inputACode:Ljava/lang/String;

.field private volatile inputBCode:Ljava/lang/String;

.field private volatile inputLtCode:Ljava/lang/String;

.field private volatile inputRtCode:Ljava/lang/String;

.field private final inputTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/delta/quest/DeltaService$TraceStat;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastMovementNanos:J

.field private lastTelemetryNanos:J

.field private final leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile longArmsEnabled:Z

.field private volatile longArmsOffset:F

.field private volatile maxPerformanceEnabled:Z

.field private volatile maxPredictionsEnabled:Z

.field private final movementExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private orientationTracker:Ldev/delta/quest/OrientationTracker;

.field private positionX:F

.field private positionY:F

.field private positionZ:F

.field private preferences:Landroid/content/SharedPreferences;

.field private volatile probeStatus:Ljava/lang/String;

.field private final rawTraceLog:Ljava/lang/StringBuilder;

.field private volatile refreshRate:I

.field private volatile resolution:I

.field private final rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private smoothForwardX:F

.field private smoothForwardY:F

.field private smoothForwardZ:F

.field private volatile traceArmedNanos:J

.field private volatile traceEndNanos:J

.field private volatile traceStatus:Ljava/lang/String;

.field private volatile verticalEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$XP30efe7Sh8tN5mO7FgLHlCNQvU(Ldev/delta/quest/DeltaService;IFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/delta/quest/DeltaService;->lambda$finishFlight$0(IFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$cR7OJg-UQ6ASOQmrd8RsVABo3AQ(Ldev/delta/quest/DeltaService;)V
    .locals 0

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->movementTick()V

    return-void
.end method

.method public static synthetic $r8$lambda$l5hE4-UMg6Sed5RurXgmyycqovo(Ldev/delta/quest/DeltaService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/delta/quest/DeltaService;->lambda$runRuntimePoseProbe$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadb(Ldev/delta/quest/DeltaService;)Ldev/delta/quest/AdbManager;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetairstrikeActive(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflying(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetleftTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorientationTracker(Ldev/delta/quest/DeltaService;)Ldev/delta/quest/OrientationTracker;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreferences(Ldev/delta/quest/DeltaService;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrightTriggerDown(Ldev/delta/quest/DeltaService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputconnected(Ldev/delta/quest/DeltaService;Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->connected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputconnecting(Ldev/delta/quest/DeltaService;Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputguardianDisabled(Ldev/delta/quest/DeltaService;Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyAllPresets(Ldev/delta/quest/DeltaService;)V
    .locals 0

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyAllPresets()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastStatus(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseInputLine(Ldev/delta/quest/DeltaService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->parseInputLine(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestorePoseState(Ldev/delta/quest/DeltaService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->restorePoseState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->movementExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    const-string v0, "Calibration: idle"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->calibrationStatus:Ljava/lang/String;

    .line 105
    const-string v0, "Input trace: not started"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 106
    const-string v0, "Probe: not run"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    const/high16 v0, -0x40800000    # -1.0f

    .line 118
    iput v0, p0, Ldev/delta/quest/DeltaService;->cameraZ:F

    .line 121
    iput v0, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    return-void
.end method

.method private applyAllPresets()V
    .locals 0

    .line 569
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyMaxPerformance()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyMaxPredictions()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyRefreshRate()V

    .line 570
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyResolution()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyFoveation()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyGuardian()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyLongArms()V

    return-void
.end method

.method private applyFoveation()V
    .locals 3

    .line 602
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget v1, p0, Ldev/delta/quest/DeltaService;->foveation:I

    if-nez v1, :cond_1

    .line 604
    const-string p0, "setprop debug.oculus.foveation.level \"\"; setprop debug.oculus.foveation.dynamic \"\""

    goto :goto_1

    .line 606
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setprop debug.oculus.foveation.level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    iget p0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; setprop debug.oculus.foveation.dynamic 1"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    :goto_1
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private applyGuardian()V
    .locals 2

    .line 610
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    .line 611
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v1, "setprop debug.oculus.guardian_pause "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private applyLongArms()V
    .locals 2

    .line 615
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    .line 617
    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->longArmsEnabled:Z

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "setprop debug.oculus.headlock -1; i=1; while [ $i -lt 125 ]; do setprop debug.oculus.headlock.translation.z -$(awk -v i=$i \'BEGIN {print i * 0.5}\'); i=$((i + 1)); done; setprop debug.oculus.headlock.translation.z 1; setprop debug.oculus.headlock 3"

    goto :goto_0

    .line 620
    :cond_1
    const-string v1, "setprop debug.oculus.headlock 0; setprop debug.oculus.headlock.translation.z 0"

    .line 622
    :goto_0
    invoke-virtual {v0, v1}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private applyMaxPerformance()V
    .locals 1

    .line 574
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->maxPerformanceEnabled:Z

    if-eqz p0, :cond_1

    .line 576
    const-string p0, "setprop debug.oculus.cpuLevel 4; setprop debug.oculus.gpuLevel 4"

    goto :goto_0

    .line 577
    :cond_1
    const-string p0, "setprop debug.oculus.cpuLevel \"\"; setprop debug.oculus.gpuLevel \"\""

    .line 575
    :goto_0
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private applyMaxPredictions()V
    .locals 1

    .line 581
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->maxPredictionsEnabled:Z

    if-eqz p0, :cond_1

    .line 583
    const-string p0, "setprop debug.oculus.predictionSeconds 1.0"

    goto :goto_0

    .line 584
    :cond_1
    const-string p0, "setprop debug.oculus.predictionSeconds \"\""

    .line 582
    :goto_0
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private applyRefreshRate()V
    .locals 3

    .line 588
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget v1, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    if-nez v1, :cond_1

    const-string p0, "setprop debug.oculus.refreshRate \"\""

    goto :goto_0

    .line 590
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setprop debug.oculus.refreshRate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 589
    :goto_0
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private applyResolution()V
    .locals 3

    .line 594
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget v1, p0, Ldev/delta/quest/DeltaService;->resolution:I

    if-nez v1, :cond_1

    .line 596
    const-string p0, "setprop debug.oculus.textureWidth \"\"; setprop debug.oculus.textureHeight \"\""

    goto :goto_0

    .line 598
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setprop debug.oculus.textureWidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ldev/delta/quest/DeltaService;->resolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; setprop debug.oculus.textureHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 595
    :goto_0
    invoke-virtual {v0, p0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method private beginFlight()V
    .locals 5

    .line 409
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->wantsMovement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 411
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Ldev/delta/quest/DeltaService;->lastMovementNanos:J

    .line 412
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->readCameraForward()[F

    move-result-object v0

    .line 413
    aget v1, v0, v1

    iput v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    .line 414
    aget v1, v0, v2

    iput v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    const/4 v1, 0x2

    .line 415
    aget v0, v0, v1

    iput v0, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    .line 416
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    const-string v0, "setprop debug.oculus.headlock.rotation.x \"\"; setprop debug.oculus.headlock.rotation.y \"\"; setprop debug.oculus.headlock.rotation.z \"\"; setprop debug.oculus.headlock 1; dumpsys DumpsysProxy VrRuntime cmd input controllers override none"

    invoke-virtual {p0, v0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private broadcastStatus(Ljava/lang/String;)V
    .locals 3

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dev.moonlit.quest.action.STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connected"

    .line 728
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connecting"

    iget-boolean v2, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 729
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "rt_down"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 730
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "lt_down"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_x"

    iget v2, p0, Ldev/delta/quest/DeltaService;->cameraX:F

    .line 731
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_y"

    iget v2, p0, Ldev/delta/quest/DeltaService;->cameraY:F

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_z"

    iget v2, p0, Ldev/delta/quest/DeltaService;->cameraZ:F

    .line 732
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_rt"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_lt"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_a"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_b"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->calibrationStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trace_status"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 735
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "probe"

    iget-object v2, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    .line 736
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 737
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    :cond_0
    invoke-virtual {p0, v0}, Ldev/delta/quest/DeltaService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private chooseBestTrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 335
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 336
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 337
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_1

    move-object p0, v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    :goto_0
    if-eqz p0, :cond_2

    .line 339
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 342
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/high16 p1, -0x8000000000000000L

    move-object v2, v0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/delta/quest/DeltaService$TraceStat;

    .line 343
    iget-object v4, v3, Ldev/delta/quest/DeltaService$TraceStat;->signature:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 344
    :cond_4
    iget v4, v3, Ldev/delta/quest/DeltaService$TraceStat;->maximum:I

    iget v5, v3, Ldev/delta/quest/DeltaService$TraceStat;->minimum:I

    sub-int/2addr v4, v5

    if-nez v4, :cond_5

    .line 345
    iget v5, v3, Ldev/delta/quest/DeltaService$TraceStat;->count:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    goto :goto_1

    .line 346
    :cond_5
    iget-boolean v5, v3, Ldev/delta/quest/DeltaService$TraceStat;->digital:Z

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x2710

    goto :goto_2

    :cond_6
    const-wide/16 v5, 0x0

    :goto_2
    int-to-long v7, v4

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    iget v4, v3, Ldev/delta/quest/DeltaService$TraceStat;->count:I

    int-to-long v7, v4

    const-wide/16 v9, 0x14

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    cmp-long v4, v5, p1

    if-lez v4, :cond_3

    move-object v2, v3

    move-wide p1, v5

    goto :goto_1

    :cond_7
    if-nez v2, :cond_8

    goto :goto_3

    .line 349
    :cond_8
    iget-object v0, v2, Ldev/delta/quest/DeltaService$TraceStat;->signature:Ljava/lang/String;

    :cond_9
    :goto_3
    return-object v0
.end method

.method private finishFlight()V
    .locals 8

    .line 507
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 509
    iget v4, p0, Ldev/delta/quest/DeltaService;->positionX:F

    iget v5, p0, Ldev/delta/quest/DeltaService;->positionY:F

    iget v6, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    .line 510
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    invoke-static {v4, v5, v6}, Ldev/delta/quest/DeltaService;->translationCommand(FFF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/delta/quest/AdbManager;->executeLatestState(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->movementExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda1;-><init>(Ldev/delta/quest/DeltaService;IFFF)V

    const-wide/16 v1, 0xa0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private declared-synchronized finishInputTraceIfNeeded(J)V
    .locals 3

    const-string v0, "Input trace "

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-wide v1, p0, Ldev/delta/quest/DeltaService;->traceEndNanos:J

    cmp-long p1, p1, v1

    if-gtz p1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    const/4 p2, 0x0

    .line 303
    iput-object p2, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 306
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": captured "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " changing channels"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->writeInputTraceReport()V

    .line 309
    invoke-direct {p0, p2}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 301
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getCarSpeed()F
    .locals 2

    .line 500
    iget v0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    if-nez v0, :cond_0

    const/high16 p0, 0x40800000    # 4.0f

    return p0

    .line 501
    :cond_0
    iget v0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/high16 p0, 0x41900000    # 18.0f

    return p0

    .line 502
    :cond_1
    iget p0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x420c0000    # 35.0f

    return p0

    :cond_2
    const/high16 p0, 0x41100000    # 9.0f

    return p0
.end method

.method private getFlySpeed()F
    .locals 2

    .line 493
    iget v0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    if-nez v0, :cond_0

    const/high16 p0, 0x40400000    # 3.0f

    return p0

    .line 494
    :cond_0
    iget v0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/high16 p0, 0x41400000    # 12.0f

    return p0

    .line 495
    :cond_1
    iget p0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x41c80000    # 25.0f

    return p0

    :cond_2
    const/high16 p0, 0x40e00000    # 7.0f

    return p0
.end method

.method private synthetic lambda$finishFlight$0(IFFF)V
    .locals 1

    .line 512
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3, p4}, Ldev/delta/quest/DeltaService;->translationCommand(FFF)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; setprop debug.oculus.headlock 0; dumpsys DumpsysProxy VrRuntime cmd input controllers override none"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$runRuntimePoseProbe$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Probe saved: "

    const-string v1, "\nPROBE ERROR: "

    const/4 v2, 0x0

    .line 548
    :try_start_0
    invoke-virtual {p0, v2}, Ldev/delta/quest/DeltaService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    .line 549
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 550
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "moonlit_runtime_probe.txt"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p2, :cond_1

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 554
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nPull with: adb pull /sdcard/Android/data/dev.moonlit.quest/files/moonlit_runtime_probe.txt"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 551
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 562
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Probe save failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    .line 564
    :goto_1
    invoke-direct {p0, v2}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method private loadPreferences()V
    .locals 4

    .line 141
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fly_rt_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    .line 142
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "vertical_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    .line 143
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "car_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 144
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_arms_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->longArmsEnabled:Z

    .line 145
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "long_arms_offset"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->longArmsOffset:F

    .line 146
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    if-eqz v0, :cond_0

    .line 145
    iput-boolean v2, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    .line 146
    iput-boolean v2, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v2, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    .line 150
    :cond_1
    :goto_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fly_speed"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    .line 151
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "car_speed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    .line 152
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "max_performance"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->maxPerformanceEnabled:Z

    .line 153
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "max_predictions_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->maxPredictionsEnabled:Z

    .line 154
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "refresh_rate"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    .line 155
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "resolution"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    .line 156
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "foveation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    .line 157
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "guardian_disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    .line 158
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "input_mapping_rt"

    const-string v2, "BTN_TR2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "input_mapping_lt"

    const-string v2, "BTN_TL2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "input_mapping_a"

    const-string v2, "BTN_A"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "input_mapping_b"

    const-string v2, "BTN_B"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    return-void
.end method

.method private movementTick()V
    .locals 10

    .line 424
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->readCameraForward()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    aget v2, v0, v1

    iput v2, p0, Ldev/delta/quest/DeltaService;->cameraX:F

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, p0, Ldev/delta/quest/DeltaService;->cameraY:F

    const/4 v2, 0x2

    aget v0, v0, v2

    iput v0, p0, Ldev/delta/quest/DeltaService;->cameraZ:F

    .line 426
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 427
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->wantsMovement()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 428
    iget-wide v4, p0, Ldev/delta/quest/DeltaService;->lastMovementNanos:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v4

    .line 429
    iput-wide v2, p0, Ldev/delta/quest/DeltaService;->lastMovementNanos:J

    const v5, 0x3d4ccccd    # 0.05f

    .line 430
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v5, 0x3a83126f    # 0.001f

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 432
    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    iget v6, p0, Ldev/delta/quest/DeltaService;->cameraX:F

    sub-float/2addr v6, v5

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    .line 433
    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    iget v6, p0, Ldev/delta/quest/DeltaService;->cameraY:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    .line 434
    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    iget v6, p0, Ldev/delta/quest/DeltaService;->cameraZ:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    .line 435
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->normalizeForward()V

    .line 437
    iget-object v5, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    iget-wide v5, p0, Ldev/delta/quest/DeltaService;->airstrikeStartNanos:J

    sub-long v5, v2, v5

    long-to-float v5, v5

    div-float/2addr v5, v4

    const v4, 0x3f666666    # 0.9f

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_0

    .line 441
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 442
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    goto/16 :goto_4

    :cond_0
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v8, v5

    mul-double/2addr v8, v6

    float-to-double v4, v4

    div-double/2addr v8, v4

    .line 444
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x4031800000000000L    # 17.5

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 445
    iget v4, p0, Ldev/delta/quest/DeltaService;->positionY:F

    mul-float/2addr v1, v0

    add-float/2addr v4, v1

    iput v4, p0, Ldev/delta/quest/DeltaService;->positionY:F

    goto/16 :goto_4

    .line 447
    :cond_1
    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->getFlySpeed()F

    move-result v1

    mul-float/2addr v1, v0

    .line 449
    iget v0, p0, Ldev/delta/quest/DeltaService;->positionX:F

    iget v4, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    iput v0, p0, Ldev/delta/quest/DeltaService;->positionX:F

    .line 450
    iget v0, p0, Ldev/delta/quest/DeltaService;->positionY:F

    iget v4, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    iput v0, p0, Ldev/delta/quest/DeltaService;->positionY:F

    .line 451
    iget v0, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    iget v4, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    iput v0, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    goto/16 :goto_4

    .line 452
    :cond_2
    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 453
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v5

    .line 454
    :goto_0
    iget-object v6, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    sub-float/2addr v1, v4

    .line 455
    iget v4, p0, Ldev/delta/quest/DeltaService;->positionY:F

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->getFlySpeed()F

    move-result v5

    mul-float/2addr v1, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v5

    mul-float/2addr v1, v0

    add-float/2addr v4, v1

    iput v4, p0, Ldev/delta/quest/DeltaService;->positionY:F

    goto :goto_4

    .line 456
    :cond_5
    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    if-eqz v1, :cond_8

    .line 457
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v5

    .line 458
    :goto_2
    iget-object v6, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    sub-float/2addr v1, v4

    .line 459
    iget v4, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    mul-float/2addr v4, v4

    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    .line 462
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->getCarSpeed()F

    move-result v5

    mul-float/2addr v1, v5

    mul-float/2addr v1, v0

    .line 463
    iget v0, p0, Ldev/delta/quest/DeltaService;->positionX:F

    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    div-float/2addr v5, v4

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    iput v0, p0, Ldev/delta/quest/DeltaService;->positionX:F

    .line 464
    iget v0, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    iget v5, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    div-float/2addr v5, v4

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    iput v0, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    .line 467
    :cond_8
    :goto_4
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    iget v1, p0, Ldev/delta/quest/DeltaService;->positionX:F

    iget v4, p0, Ldev/delta/quest/DeltaService;->positionY:F

    iget v5, p0, Ldev/delta/quest/DeltaService;->positionZ:F

    invoke-static {v1, v4, v5}, Ldev/delta/quest/DeltaService;->translationCommand(FFF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldev/delta/quest/AdbManager;->executeLatestState(Ljava/lang/String;)V

    .line 469
    :cond_9
    invoke-direct {p0, v2, v3}, Ldev/delta/quest/DeltaService;->finishInputTraceIfNeeded(J)V

    .line 470
    iget-wide v0, p0, Ldev/delta/quest/DeltaService;->lastTelemetryNanos:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0xee6b280

    cmp-long v0, v0, v4

    if-ltz v0, :cond_a

    .line 471
    iput-wide v2, p0, Ldev/delta/quest/DeltaService;->lastTelemetryNanos:J

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private normalizeForward()V
    .locals 2

    .line 483
    iget v0, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    mul-float/2addr v0, v0

    iget v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 486
    iget v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    div-float/2addr v1, v0

    iput v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardX:F

    .line 487
    iget v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    div-float/2addr v1, v0

    iput v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardY:F

    .line 488
    iget v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    div-float/2addr v1, v0

    iput v1, p0, Ldev/delta/quest/DeltaService;->smoothForwardZ:F

    :cond_0
    return-void
.end method

.method private parseInputLine(Ljava/lang/String;)V
    .locals 5

    .line 209
    invoke-static {p1}, Ldev/delta/quest/DeltaService$ParsedInput;->from(Ljava/lang/String;)Ldev/delta/quest/DeltaService$ParsedInput;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1, v0}, Ldev/delta/quest/DeltaService;->recordTraceEvent(Ljava/lang/String;Ldev/delta/quest/DeltaService$ParsedInput;)V

    .line 213
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->calibrationTarget:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Ldev/delta/quest/DeltaService;->calibrationArmedNanos:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->signature()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldev/delta/quest/DeltaService;->saveCalibratedInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ldev/delta/quest/DeltaService$ParsedInput;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->isReleased()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 224
    :goto_0
    iget-object v3, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ldev/delta/quest/DeltaService$ParsedInput;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    :goto_1
    or-int/2addr p1, v0

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {v0}, Ldev/delta/quest/DeltaService$ParsedInput;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 229
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    const/4 p1, 0x0

    .line 230
    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private readCameraForward()[F
    .locals 1

    const/4 v0, 0x3

    .line 477
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 478
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    invoke-virtual {p0, v0}, Ldev/delta/quest/OrientationTracker;->getForward([F)Z

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private declared-synchronized recordTraceEvent(Ljava/lang/String;Ldev/delta/quest/DeltaService$ParsedInput;)V
    .locals 5

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    .line 285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz v0, :cond_4

    .line 286
    iget-wide v3, p0, Ldev/delta/quest/DeltaService;->traceArmedNanos:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    iget-wide v3, p0, Ldev/delta/quest/DeltaService;->traceEndNanos:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 288
    monitor-exit p0

    return-void

    .line 289
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ldev/delta/quest/DeltaService$ParsedInput;->signature()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/delta/quest/DeltaService$TraceStat;

    if-nez v1, :cond_2

    .line 291
    new-instance v1, Ldev/delta/quest/DeltaService$TraceStat;

    invoke-virtual {p2}, Ldev/delta/quest/DeltaService$ParsedInput;->signature()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p2, Ldev/delta/quest/DeltaService$ParsedInput;->digital:Z

    iget v4, p2, Ldev/delta/quest/DeltaService$ParsedInput;->value:I

    invoke-direct {v1, v2, v3, v4}, Ldev/delta/quest/DeltaService$TraceStat;-><init>(Ljava/lang/String;ZI)V

    .line 292
    invoke-virtual {p2}, Ldev/delta/quest/DeltaService$ParsedInput;->signature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_2
    iget p2, p2, Ldev/delta/quest/DeltaService$ParsedInput;->value:I

    invoke-virtual {v1, p2}, Ldev/delta/quest/DeltaService$TraceStat;->observe(I)V

    .line 295
    iget-object p2, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const v0, 0x493e0

    if-ge p2, v0, :cond_3

    .line 296
    iget-object p2, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :cond_3
    monitor-exit p0

    return-void

    .line 286
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private restorePoseState(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 616
    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    .line 617
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "guardian_disabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    :cond_0
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 620
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 621
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 622
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 623
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->flightGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 624
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 625
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setprop debug.oculus.headlock 0; setprop debug.oculus.headlock.rotation.x \"\"; setprop debug.oculus.headlock.rotation.y \"\"; setprop debug.oculus.headlock.rotation.z \"\"; setprop debug.oculus.guardian_pause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; dumpsys DumpsysProxy VrRuntime cmd input controllers override none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 632
    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method private saveCalibratedInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 244
    const-string v0, "RT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput-object p2, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    .line 246
    const-string v0, "input_mapping_rt"

    goto :goto_0

    .line 247
    :cond_0
    const-string v0, "LT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iput-object p2, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    .line 249
    const-string v0, "input_mapping_lt"

    goto :goto_0

    .line 250
    :cond_1
    const-string v0, "A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iput-object p2, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    .line 252
    const-string v0, "input_mapping_a"

    goto :goto_0

    .line 254
    :cond_2
    iput-object p2, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    .line 255
    const-string v0, "input_mapping_b"

    .line 257
    :goto_0
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Ldev/delta/quest/DeltaService;->calibrationTarget:Ljava/lang/String;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calibration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->calibrationStatus:Ljava/lang/String;

    .line 260
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->finishFlight()V

    .line 264
    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method private startAsForeground()V
    .locals 6

    .line 742
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Ldev/delta/quest/DeltaService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 743
    const-string v1, "delta_engine"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 744
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v4, "Delta connection"

    const/4 v5, 0x2

    invoke-direct {v2, v1, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 746
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 747
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 749
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ldev/delta/quest/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 752
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Ldev/delta/quest/R$drawable;->ic_stat_delta:I

    .line 753
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "Moonlit"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "Quest runtime utility active"

    .line 754
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 755
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 756
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/16 v3, 0x2c6

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    .line 757
    invoke-virtual {p0, v3, v0, v1}, Ldev/delta/quest/DeltaService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0, v3, v0}, Ldev/delta/quest/DeltaService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method private static translationCommand(FFF)Ljava/lang/String;
    .locals 1

    .line 519
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 522
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 519
    const-string p1, "setprop debug.oculus.headlock.translation.x %.5f; setprop debug.oculus.headlock.translation.y %.5f; setprop debug.oculus.headlock.translation.z %.5f"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized updateMovementState()V
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->wantsMovement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->beginFlight()V

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->finishFlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private wantsMovement()Z
    .locals 3

    .line 395
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 396
    :cond_0
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 397
    :cond_1
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 398
    :cond_3
    :goto_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method private declared-synchronized writeInputTraceReport()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0, v0}, Ldev/delta/quest/DeltaService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 356
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "moonlit_input_trace.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    const-string v2, "MOONLIT INPUT TRACE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RT mapping: "

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "LT mapping: "

    .line 360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "A mapping: "

    .line 361
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "B mapping: "

    .line 362
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v2, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 364
    const-string v5, "--- "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/delta/quest/DeltaService$TraceStat;

    .line 366
    iget-object v6, v5, Ldev/delta/quest/DeltaService$TraceStat;->signature:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " digital="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Ldev/delta/quest/DeltaService$TraceStat;->digital:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min="

    .line 367
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Ldev/delta/quest/DeltaService$TraceStat;->minimum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Ldev/delta/quest/DeltaService$TraceStat;->maximum:I

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Ldev/delta/quest/DeltaService$TraceStat;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    :cond_2
    const-string v2, "\nRAW EVENTS\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 373
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 372
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 376
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input trace save failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method


# virtual methods
.method public declared-synchronized analyzeInputTraces()V
    .locals 8

    monitor-enter p0

    .line 313
    :try_start_0
    const-string v0, "RT"

    const-string v1, "GRIP"

    invoke-direct {p0, v0, v1}, Ldev/delta/quest/DeltaService;->chooseBestTrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "LT"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ldev/delta/quest/DeltaService;->chooseBestTrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    const-string v3, "A"

    invoke-direct {p0, v3, v2}, Ldev/delta/quest/DeltaService;->chooseBestTrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    const-string v4, "B"

    invoke-direct {p0, v4, v2}, Ldev/delta/quest/DeltaService;->chooseBestTrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Analysis:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v6, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    if-eqz v0, :cond_0

    .line 319
    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    const-string v7, "input_mapping_rt"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, " RT="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    :cond_0
    const-string v0, " RT=unresolved"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v1, :cond_1

    .line 321
    iput-object v1, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    const-string v0, "input_mapping_lt"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, " LT="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 322
    :cond_1
    const-string v0, " LT=unresolved"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v3, :cond_2

    .line 323
    iput-object v3, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    const-string v0, "input_mapping_a"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, " A="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v4, :cond_3

    .line 324
    iput-object v4, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    const-string v0, "input_mapping_b"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, " B="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->finishFlight()V

    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->writeInputTraceReport()V

    .line 331
    invoke-direct {p0, v2}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public beginInputCalibration(Ljava/lang/String;)V
    .locals 4

    .line 235
    iput-object p1, p0, Ldev/delta/quest/DeltaService;->calibrationTarget:Ljava/lang/String;

    .line 236
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x35a4e900

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldev/delta/quest/DeltaService;->calibrationArmedNanos:J

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calibration: release everything, then press "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " after one second"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->calibrationStatus:Ljava/lang/String;

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method public cycleCarSpeed()V
    .locals 2

    .line 690
    iget v0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "car_speed"

    iget p0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public cycleFlySpeed()V
    .locals 2

    .line 689
    iget v0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fly_speed"

    iget p0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public cycleFoveation()V
    .locals 3

    .line 696
    iget v0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "foveation"

    iget v2, p0, Ldev/delta/quest/DeltaService;->foveation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyFoveation()V

    return-void
.end method

.method public cycleRefreshRate()V
    .locals 3

    .line 694
    iget v0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    const/16 v1, 0x48

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    const/16 v2, 0x5a

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    if-ne v0, v2, :cond_2

    const/16 v1, 0x78

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_rate"

    iget v2, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyRefreshRate()V

    return-void
.end method

.method public cycleResolution()V
    .locals 3

    .line 695
    iget v0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    const/16 v1, 0x800

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    const/16 v2, 0xa00

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    if-ne v0, v2, :cond_2

    const/16 v1, 0xc00

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Ldev/delta/quest/DeltaService;->resolution:I

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "resolution"

    iget v2, p0, Ldev/delta/quest/DeltaService;->resolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyResolution()V

    return-void
.end method

.method public disableWifiForFiveSeconds()V
    .locals 1

    .line 685
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 686
    :cond_0
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    const-string v0, "(sleep 5; svc wifi enable) >/dev/null 2>&1 & svc wifi disable"

    invoke-virtual {p0, v0}, Ldev/delta/quest/AdbManager;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public getCalibrationStatus()Ljava/lang/String;
    .locals 0

    .line 722
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->calibrationStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraX()F
    .locals 0

    .line 715
    iget p0, p0, Ldev/delta/quest/DeltaService;->cameraX:F

    return p0
.end method

.method public getCameraY()F
    .locals 0

    .line 716
    iget p0, p0, Ldev/delta/quest/DeltaService;->cameraY:F

    return p0
.end method

.method public getCameraZ()F
    .locals 0

    .line 717
    iget p0, p0, Ldev/delta/quest/DeltaService;->cameraZ:F

    return p0
.end method

.method public getCarSpeedMode()I
    .locals 0

    .line 706
    iget p0, p0, Ldev/delta/quest/DeltaService;->carSpeedMode:I

    return p0
.end method

.method public getFlySpeedMode()I
    .locals 0

    .line 705
    iget p0, p0, Ldev/delta/quest/DeltaService;->flySpeedMode:I

    return p0
.end method

.method public getFoveation()I
    .locals 0

    .line 711
    iget p0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    return p0
.end method

.method public getInputACode()Ljava/lang/String;
    .locals 0

    .line 720
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    return-object p0
.end method

.method public getInputBCode()Ljava/lang/String;
    .locals 0

    .line 721
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    return-object p0
.end method

.method public getInputLtCode()Ljava/lang/String;
    .locals 0

    .line 719
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    return-object p0
.end method

.method public getInputRtCode()Ljava/lang/String;
    .locals 0

    .line 718
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLongArmsOffset()F
    .locals 1

    .line 702
    iget v0, p0, Ldev/delta/quest/DeltaService;->longArmsOffset:F

    return v0
.end method

.method public getProbeStatus()Ljava/lang/String;
    .locals 0

    .line 724
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRate()I
    .locals 0

    .line 709
    iget p0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    return p0
.end method

.method public getResolution()I
    .locals 0

    .line 710
    iget p0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    return p0
.end method

.method public getTraceStatus()Ljava/lang/String;
    .locals 0

    .line 723
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    return-object p0
.end method

.method public isCarEnabled()Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    return p0
.end method

.method public isConnected()Z
    .locals 1

    .line 700
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->connected:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ldev/delta/quest/AdbManager;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnecting()Z
    .locals 0

    .line 701
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    return p0
.end method

.method public isFlyRtEnabled()Z
    .locals 0

    .line 702
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    return p0
.end method

.method public isGuardianDisabled()Z
    .locals 0

    .line 712
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    return p0
.end method

.method public isLeftTriggerDown()Z
    .locals 0

    .line 714
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isLongArmsEnabled()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->longArmsEnabled:Z

    return v0
.end method

.method public isMaxPerformanceEnabled()Z
    .locals 0

    .line 707
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->maxPerformanceEnabled:Z

    return p0
.end method

.method public isMaxPredictionsEnabled()Z
    .locals 0

    .line 708
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->maxPredictionsEnabled:Z

    return p0
.end method

.method public isRightTriggerDown()Z
    .locals 0

    .line 713
    iget-object p0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isVerticalEnabled()Z
    .locals 0

    .line 703
    iget-boolean p0, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 9

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    sput-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    .line 130
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->startAsForeground()V

    .line 131
    const-string v0, "delta"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/delta/quest/DeltaService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    .line 132
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->loadPreferences()V

    .line 133
    invoke-static {p0}, Ldev/delta/quest/AdbManager;->getInstance(Landroid/content/Context;)Ldev/delta/quest/AdbManager;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    .line 134
    new-instance v0, Ldev/delta/quest/OrientationTracker;

    invoke-direct {v0, p0}, Ldev/delta/quest/OrientationTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rotation-vector sensor available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    invoke-virtual {v1}, Ldev/delta/quest/OrientationTracker;->start()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeltaService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Ldev/delta/quest/DeltaService;->movementExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda0;-><init>(Ldev/delta/quest/DeltaService;)V

    const-wide/16 v6, 0x14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 764
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->rightTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 765
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->leftTriggerDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 766
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->flying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 767
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 768
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldev/delta/quest/OrientationTracker;->stop()V

    .line 769
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->movementExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 770
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    if-eqz v0, :cond_1

    .line 771
    const-string v2, "setprop debug.oculus.headlock 0; setprop debug.oculus.headlock.rotation.x \"\"; setprop debug.oculus.headlock.rotation.y \"\"; setprop debug.oculus.headlock.rotation.z \"\"; setprop debug.oculus.guardian_pause 0; dumpsys DumpsysProxy VrRuntime cmd input controllers override none"

    invoke-virtual {v0, v2}, Ldev/delta/quest/AdbManager;->executeThenDisconnect(Ljava/lang/String;)V

    .line 778
    :cond_1
    iput-boolean v1, p0, Ldev/delta/quest/DeltaService;->connected:Z

    iput-boolean v1, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    const/4 v0, 0x0

    sput-object v0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    .line 779
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    const-string p2, "dev.moonlit.quest.action.CONNECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->requestConnect()V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public recenterFlight()V
    .locals 1

    .line 691
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->orientationTracker:Ldev/delta/quest/OrientationTracker;

    invoke-virtual {v0}, Ldev/delta/quest/OrientationTracker;->recenter()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method public requestConnect()V
    .locals 2

    .line 171
    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->connecting:Z

    .line 176
    invoke-direct {p0, v1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    new-instance v1, Ldev/delta/quest/DeltaService$1;

    invoke-direct {v1, p0}, Ldev/delta/quest/DeltaService$1;-><init>(Ldev/delta/quest/DeltaService;)V

    invoke-virtual {v0, v1}, Ldev/delta/quest/AdbManager;->connect(Ldev/delta/quest/AdbManager$ConnectionCallback;)V

    return-void

    .line 172
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void
.end method

.method public resetAllRuntimeOverrides()V
    .locals 3

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 637
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 638
    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->maxPerformanceEnabled:Z

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->maxPredictionsEnabled:Z

    .line 639
    iput v0, p0, Ldev/delta/quest/DeltaService;->refreshRate:I

    iput v0, p0, Ldev/delta/quest/DeltaService;->resolution:I

    iput v0, p0, Ldev/delta/quest/DeltaService;->foveation:I

    iput-boolean v0, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    .line 640
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fly_rt_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vertical_enabled"

    .line 641
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "car_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "max_performance"

    .line 642
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "max_predictions_enabled"

    .line 643
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "refresh_rate"

    .line 644
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "resolution"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "foveation"

    .line 645
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "guardian_disabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    .line 646
    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->restorePoseState(Z)V

    .line 647
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyAllPresets()V

    return-void
.end method

.method public declared-synchronized resetInputMappings()V
    .locals 3

    monitor-enter p0

    .line 381
    :try_start_0
    const-string v0, "BTN_TR2"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputRtCode:Ljava/lang/String;

    .line 382
    const-string v0, "BTN_TL2"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputLtCode:Ljava/lang/String;

    .line 383
    const-string v0, "BTN_A"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputACode:Ljava/lang/String;

    .line 384
    const-string v0, "BTN_B"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->inputBCode:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 386
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    .line 388
    const-string v1, "Input mappings reset"

    iput-object v1, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "input_mapping_rt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "input_mapping_lt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "input_mapping_a"

    .line 390
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "input_mapping_b"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public restoreTracking()V
    .locals 1

    const/4 v0, 0x1

    .line 698
    invoke-direct {p0, v0}, Ldev/delta/quest/DeltaService;->restorePoseState(Z)V

    return-void
.end method

.method public runRuntimePoseProbe()V
    .locals 2

    .line 526
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "Probe: connect ADB first"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    .line 528
    invoke-direct {p0, v1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    return-void

    .line 531
    :cond_0
    const-string v0, "Probe: running\u2026"

    iput-object v0, p0, Ldev/delta/quest/DeltaService;->probeStatus:Ljava/lang/String;

    .line 532
    invoke-direct {p0, v1}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->adb:Ldev/delta/quest/AdbManager;

    new-instance v1, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/delta/quest/DeltaService$$ExternalSyntheticLambda2;-><init>(Ldev/delta/quest/DeltaService;)V

    const-string p0, "echo \'=== MOONLIT QUEST RUNTIME PROBE ===\'; date; echo \'--- DEVICE ---\'; getprop ro.product.model; getprop ro.build.display.id; echo \'--- VR SERVICES ---\'; service list | grep -iE \'vr|oculus|horizon\'; echo \'--- VRRUNTIME CMD HELP ---\'; dumpsys DumpsysProxy VrRuntime cmd help 2>&1; echo \'--- VRRUNTIME HELP ---\'; dumpsys DumpsysProxy VrRuntime help 2>&1; echo \'--- INPUT HELP ---\'; dumpsys DumpsysProxy VrRuntime cmd input help 2>&1; echo \'--- CONTROLLER HELP ---\'; dumpsys DumpsysProxy VrRuntime cmd input controllers help 2>&1; echo \'--- TRACKING HELP ---\'; dumpsys DumpsysProxy VrRuntime cmd tracking help 2>&1; echo \'--- VRRUNTIME STATE (LIMITED) ---\'; dumpsys DumpsysProxy VrRuntime 2>&1 | head -n 500; echo \'--- INPUT DEVICES ---\'; getevent -pl 2>&1; echo \'--- OCULUS PROPERTIES ---\'; getprop | grep -iE \'oculus|vr\' | head -n 500; echo \'--- SENSOR SERVICE (LIMITED) ---\'; dumpsys sensorservice 2>&1 | head -n 250; echo \'=== END PROBE ===\'"

    invoke-virtual {v0, p0, v1}, Ldev/delta/quest/AdbManager;->executeForOutput(Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V

    return-void
.end method

.method public setCarEnabled(Z)V
    .locals 2

    .line 669
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 670
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->recenterFlight()V

    .line 671
    :cond_0
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fly_rt_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "vertical_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    .line 672
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "car_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 673
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 674
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    return-void
.end method

.method public setFlyRtEnabled(Z)V
    .locals 2

    .line 651
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 652
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->recenterFlight()V

    .line 653
    :cond_0
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fly_rt_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "vertical_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    .line 654
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "car_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 655
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 656
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    return-void
.end method

.method public setGuardianDisabled(Z)V
    .locals 2

    .line 697
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->guardianDisabled:Z

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guardian_disabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyGuardian()V

    return-void
.end method

.method public setLongArmsEnabled(Z)V
    .locals 3

    .line 685
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->longArmsEnabled:Z

    .line 686
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyLongArms()V

    .line 687
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "long_arms_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->longArmsEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLongArmsOffset(F)V
    .locals 2

    .line 695
    iput p1, p0, Ldev/delta/quest/DeltaService;->longArmsOffset:F

    .line 696
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyLongArms()V

    .line 697
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "long_arms_offset"

    iget v1, p0, Ldev/delta/quest/DeltaService;->longArmsOffset:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxPerformanceEnabled(Z)V
    .locals 2

    .line 692
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->maxPerformanceEnabled:Z

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_performance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyMaxPerformance()V

    return-void
.end method

.method public setMaxPredictionsEnabled(Z)V
    .locals 2

    .line 693
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->maxPredictionsEnabled:Z

    iget-object v0, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_predictions_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->applyMaxPredictions()V

    return-void
.end method

.method public setVerticalEnabled(Z)V
    .locals 2

    .line 660
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 661
    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 662
    :cond_0
    iget-object p1, p0, Ldev/delta/quest/DeltaService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fly_rt_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->flyRtEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "vertical_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->verticalEnabled:Z

    .line 663
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "car_enabled"

    iget-boolean v1, p0, Ldev/delta/quest/DeltaService;->carEnabled:Z

    .line 664
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    return-void
.end method

.method public declared-synchronized startInputTrace(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Input trace "

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 269
    const-string p1, "Input trace: connect ADB first"

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 270
    invoke-direct {p0, v2}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    iput-object p1, p0, Ldev/delta/quest/DeltaService;->activeTraceTarget:Ljava/lang/String;

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    add-long/2addr v3, v5

    iput-wide v3, p0, Ldev/delta/quest/DeltaService;->traceArmedNanos:J

    .line 275
    iget-wide v3, p0, Ldev/delta/quest/DeltaService;->traceArmedNanos:J

    const-wide v5, 0x10c388d00L

    add-long/2addr v3, v5

    iput-wide v3, p0, Ldev/delta/quest/DeltaService;->traceEndNanos:J

    .line 276
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->inputTraces:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Ldev/delta/quest/DeltaService;->rawTraceLog:Ljava/lang/StringBuilder;

    const-string v3, "\n=== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " TRACE ===\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": release everything; ARMED in 1 second, then press 3 times"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/DeltaService;->traceStatus:Ljava/lang/String;

    .line 280
    invoke-direct {p0, v2}, Ldev/delta/quest/DeltaService;->broadcastStatus(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public triggerAirstrike()V
    .locals 2

    .line 678
    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/delta/quest/DeltaService;->airstrikeStartNanos:J

    .line 680
    iget-object v0, p0, Ldev/delta/quest/DeltaService;->airstrikeActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 681
    invoke-direct {p0}, Ldev/delta/quest/DeltaService;->updateMovementState()V

    return-void
.end method
