.class public final Ldev/delta/quest/OrientationTracker;
.super Ljava/lang/Object;
.source "OrientationTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private currentMatrix:[F

.field private final matrixLock:Ljava/lang/Object;

.field private referenceMatrix:[F

.field private final rotationSensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldev/delta/quest/OrientationTracker;->matrixLock:Ljava/lang/Object;

    .line 24
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ldev/delta/quest/OrientationTracker;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    .line 25
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 28
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldev/delta/quest/OrientationTracker;->rotationSensor:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public getForward([F)Z
    .locals 11

    .line 56
    iget-object v0, p0, Ldev/delta/quest/OrientationTracker;->matrixLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Ldev/delta/quest/OrientationTracker;->currentMatrix:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 58
    monitor-exit v0

    return v2

    .line 60
    :cond_0
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 61
    iget-object v3, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    if-nez v3, :cond_1

    .line 62
    iget-object v3, p0, Ldev/delta/quest/OrientationTracker;->currentMatrix:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    .line 64
    :cond_1
    iget-object p0, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    aget v0, p0, v2

    const/4 v3, 0x2

    aget v4, v1, v3

    mul-float/2addr v0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v7, v1, v6

    mul-float/2addr v5, v7

    add-float/2addr v0, v5

    const/4 v5, 0x6

    aget v5, p0, v5

    const/16 v8, 0x8

    aget v1, v1, v8

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    neg-float v0, v0

    const/4 v5, 0x1

    .line 72
    aget v9, p0, v5

    mul-float/2addr v9, v4

    const/4 v10, 0x4

    aget v10, p0, v10

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    neg-float v9, v9

    .line 75
    aget v10, p0, v3

    mul-float/2addr v10, v4

    aget v4, p0, v6

    mul-float/2addr v4, v7

    add-float/2addr v10, v4

    aget p0, p0, v8

    mul-float/2addr p0, v1

    add-float/2addr v10, p0

    neg-float p0, v10

    mul-float v1, v0, v0

    mul-float v4, v9, v9

    add-float/2addr v1, v4

    mul-float v4, p0, p0

    add-float/2addr v1, v4

    float-to-double v6, v1

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    return v2

    :cond_2
    div-float/2addr v0, v1

    .line 83
    aput v0, p1, v2

    div-float/2addr v9, v1

    .line 84
    aput v9, p1, v5

    div-float/2addr p0, v1

    .line 85
    aput p0, p1, v3

    return v5

    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    const/16 v0, 0x9

    .line 91
    new-array v0, v0, [F

    .line 92
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 93
    iget-object p1, p0, Ldev/delta/quest/OrientationTracker;->matrixLock:Ljava/lang/Object;

    monitor-enter p1

    .line 94
    :try_start_0
    iput-object v0, p0, Ldev/delta/quest/OrientationTracker;->currentMatrix:[F

    .line 95
    iget-object v1, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    .line 98
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recenter()V
    .locals 2

    .line 44
    iget-object v0, p0, Ldev/delta/quest/OrientationTracker;->matrixLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Ldev/delta/quest/OrientationTracker;->currentMatrix:[F

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_0
    iput-object v1, p0, Ldev/delta/quest/OrientationTracker;->referenceMatrix:[F

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()Z
    .locals 3

    .line 32
    iget-object v0, p0, Ldev/delta/quest/OrientationTracker;->rotationSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ldev/delta/quest/OrientationTracker;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public stop()V
    .locals 1

    .line 39
    iget-object v0, p0, Ldev/delta/quest/OrientationTracker;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
