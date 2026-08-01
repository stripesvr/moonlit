.class public final Ldev/delta/quest/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final PAGE_DIAGNOSTICS:I = 0x5

.field private static final PAGE_GRAPHICS:I = 0x2

.field private static final PAGE_INPUT_LAB:I = 0x4

.field private static final PAGE_LOCOMOTION:I = 0x1

.field private static final PAGE_MOVEMENT:I = 0x0

.field private static final PAGE_SETTINGS:I = 0x6

.field private static final PAGE_TRACKING:I = 0x3

.field private static final PREF_ANIMATED_TITLE:Ljava/lang/String; = "animated_title"

.field private static final TITLE_FRAMES:[Ljava/lang/String;


# instance fields
.field private animatedTitleButton:Landroid/widget/Button;

.field private animatedTitleEnabled:Z

.field private cameraVector:Landroid/widget/TextView;

.field private carButton:Landroid/widget/Button;

.field private carEnabled:Z

.field private carSpeedButton:Landroid/widget/Button;

.field private carSpeedMode:I

.field private connectButton:Landroid/widget/Button;

.field private connectionStatus:Landroid/widget/TextView;

.field private contentPage:Landroid/view/View;

.field private flyRtButton:Landroid/widget/Button;

.field private flyRtEnabled:Z

.field private flySpeedButton:Landroid/widget/Button;

.field private flySpeedMode:I

.field private foveation:I

.field private foveationButton:Landroid/widget/Button;

.field private fpsText:Landroid/widget/TextView;

.field private frameCounterRunning:Z

.field private framesSinceSample:I

.field private guardianButton:Landroid/widget/Button;

.field private guardianDisabled:Z

.field private homeBackButton:Landroid/widget/Button;

.field private homeIndex:I

.field private homeNextButton:Landroid/widget/Button;

.field private homePage:Landroid/view/View;

.field private homePageOne:Landroid/view/View;

.field private homePageTwo:Landroid/view/View;

.field private inputStatus:Landroid/widget/TextView;

.field private longArmsButton:Landroid/widget/Button;

.field private longArmsEnabled:Z

.field private longArmsLabel:Landroid/widget/TextView;

.field private longArmsOffset:F

.field private longArmsSlider:Landroid/widget/SeekBar;

.field private mappingStatus:Landroid/widget/TextView;

.field private maxPerformanceButton:Landroid/widget/Button;

.field private maxPerformanceEnabled:Z

.field private maxPredictionsButton:Landroid/widget/Button;

.field private maxPredictionsEnabled:Z

.field private pages:[Landroid/view/View;

.field private probeStatus:Landroid/widget/TextView;

.field private refreshRate:I

.field private refreshRateButton:Landroid/widget/Button;

.field private resolution:I

.field private resolutionButton:Landroid/widget/Button;

.field private sampleStartNanos:J

.field private sectionIcon:Landroid/widget/ImageView;

.field private sectionTitle:Landroid/widget/TextView;

.field private final statusReceiver:Landroid/content/BroadcastReceiver;

.field private titleAnimationRunning:Z

.field private final titleAnimator:Ljava/lang/Runnable;

.field private titleFrame:I

.field private final titleHandler:Landroid/os/Handler;

.field private titleText:Landroid/widget/TextView;

.field private traceStatus:Landroid/widget/TextView;

.field private verticalButton:Landroid/widget/Button;

.field private verticalEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$-PiI8hFnc8zwPeQpt6Ja96Gg5dU(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$13PmUtO6ptYL2S7T-m0bE2Ibz4Q(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$27Mtmy8sOQYDb1wER2LjuUyF9wM(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8FmoAVehGLJy2Es3d4w14BQSxzA(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8NPUlGLpAbAg8Xmr35vT0c0hdKI(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9pXhYzE6CYIIi6wd8fW8T0dO88(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJK7EXtjz1rl0LBXU3aOSkdDBsU(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E_cjKfd8JUzu5ttRAge44Lh6LM0(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HbazS-taLJCtRhm1Q87JNvHFFpE(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBhZZnzIxjvL1rTCIvyT3-kWQ1M(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mcd8lvvmnCHvjDb5hSlfuLLXvIg(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0tdsF2qvKIXDM4sjDjmGkfdNSM(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Niq5X0f1uWNVXNoefhWOos2nEQI(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqOHmKyJivttcK0hu1ARhdS-ajE(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Suzl7RjZpJxIGulBwcDcJ4ear4U(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-v-rAFgnI7RrudNB0hiVU0hvaw(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKSyDxP_oDEgTyU_Gm36nTat_jg(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvH7-MlAk5PCfMxHJxv-ObcJWbs(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hBn0oGNzm_P90BmJNJfUl0F3gs(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1KB5JetzodH2hYUMVwWnOI3WKM(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$35(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aj_ukWqh9ewjCkkwbY_6yPUa4oc(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ilfQQdIi8EdC5TuQ20UmBswc-BY(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krOGJxSRVuIJm1_pnuxUMxq3igU(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lBadAD4TZJS7ZH0zEYy2BNgMKaE(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lD-FHodgX4jYmjb9xKeNX_oaSlc(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$longArmsSliderChange(Ldev/delta/quest/MainActivity;Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/delta/quest/MainActivity;->lambda$longArmsSliderChange(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$longArmsToggle(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$longArmsToggle(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nFdaL__B2u4uxVJqctBhHzJ_niA(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8UKvwTmy8sXQM9OvQBVyz6-yvk(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWoUIHa7Iv5pFSwMNSscj4n5zZs(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tr1Hyc6QVLscrIbeIHAhAXAQE44(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjRBxDOJv3TCIfrOjiBbY8WmOe8(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPvRtjLOs6UEh4cUR3K9utTZPQQ(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4okzZiff5k70ruKjEO06HwT4pw(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z20oyvRhbCV_j5jUC-WRkYXm3N8(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZBYIzucRyx7yOL-zQ7YLWY3Bss(Ldev/delta/quest/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->lambda$wireButtons$5(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimatedTitleEnabled(Ldev/delta/quest/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettitleAnimationRunning(Ldev/delta/quest/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/delta/quest/MainActivity;->titleAnimationRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettitleFrame(Ldev/delta/quest/MainActivity;)I
    .locals 0

    iget p0, p0, Ldev/delta/quest/MainActivity;->titleFrame:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettitleHandler(Ldev/delta/quest/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/MainActivity;->titleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleText(Ldev/delta/quest/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ldev/delta/quest/MainActivity;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtitleFrame(Ldev/delta/quest/MainActivity;I)V
    .locals 0

    iput p1, p0, Ldev/delta/quest/MainActivity;->titleFrame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConnectionState(Ldev/delta/quest/MainActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/delta/quest/MainActivity;->showConnectionState(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncSettingsFromService(Ldev/delta/quest/MainActivity;Ldev/delta/quest/DeltaService;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->syncSettingsFromService(Ldev/delta/quest/DeltaService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDiagnostics(Ldev/delta/quest/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/delta/quest/MainActivity;->updateDiagnostics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTelemetry(Ldev/delta/quest/MainActivity;ZZFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/delta/quest/MainActivity;->updateTelemetry(ZZFFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTITLE_FRAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Ldev/delta/quest/MainActivity;->TITLE_FRAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Mo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Moo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Moon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Moonl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Moonli"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Moonlit"

    aput-object v2, v0, v1

    sput-object v0, Ldev/delta/quest/MainActivity;->TITLE_FRAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/delta/quest/MainActivity;->titleHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Ldev/delta/quest/MainActivity$1;

    invoke-direct {v0, p0}, Ldev/delta/quest/MainActivity$1;-><init>(Ldev/delta/quest/MainActivity;)V

    iput-object v0, p0, Ldev/delta/quest/MainActivity;->titleAnimator:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Ldev/delta/quest/MainActivity$2;

    invoke-direct {v0, p0}, Ldev/delta/quest/MainActivity$2;-><init>(Ldev/delta/quest/MainActivity;)V

    iput-object v0, p0, Ldev/delta/quest/MainActivity;->statusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static applySegoeUi(Landroid/view/View;)V
    .locals 4

    .line 547
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 548
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 549
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 550
    :goto_0
    const-string v3, "Segoe UI"

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 552
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 553
    check-cast p0, Landroid/view/ViewGroup;

    .line 554
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ldev/delta/quest/MainActivity;->applySegoeUi(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private connect()V
    .locals 2

    .line 429
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->requestNotificationPermissionIfNeeded()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 430
    invoke-direct {p0, v0, v1}, Ldev/delta/quest/MainActivity;->showConnectionState(ZZ)V

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/delta/quest/DeltaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dev.moonlit.quest.action.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private synthetic lambda$longArmsSliderChange(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    int-to-float v0, p2

    const/high16 v1, 0x43480000    # 200.0f

    sub-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Ldev/delta/quest/MainActivity;->longArmsOffset:F

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget v0, p0, Ldev/delta/quest/MainActivity;->longArmsOffset:F

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setLongArmsOffset(F)V

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$longArmsToggle(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->longArmsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->longArmsEnabled:Z

    .line 248
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    .line 249
    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->longArmsEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setLongArmsEnabled(Z)V

    .line 251
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->syncSettingsFromService(Ldev/delta/quest/DeltaService;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$wireButtons$0(Landroid/view/View;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->connect()V

    return-void
.end method

.method private synthetic lambda$wireButtons$1(Landroid/view/View;)V
    .locals 1

    .line 211
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->disableWifiForFiveSeconds()V

    goto :goto_0

    .line 214
    :cond_0
    const-string p1, "Connect ADB first"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$wireButtons$10(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    .line 225
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$11(Landroid/view/View;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->showHome()V

    return-void
.end method

.method private synthetic lambda$wireButtons$12(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    .line 231
    :cond_0
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_1

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setFlyRtEnabled(Z)V

    .line 232
    :cond_1
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->saveModes()V

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$13(Landroid/view/View;)V
    .locals 1

    .line 235
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    .line 237
    :cond_0
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_1

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setVerticalEnabled(Z)V

    .line 238
    :cond_1
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->saveModes()V

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$14(Landroid/view/View;)V
    .locals 1

    .line 241
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    .line 243
    :cond_0
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_1

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setCarEnabled(Z)V

    .line 244
    :cond_1
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->saveModes()V

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$15(Landroid/view/View;)V
    .locals 2

    .line 247
    iget p1, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    .line 248
    const-string p1, "delta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fly_speed"

    iget v1, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    .line 249
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->cycleFlySpeed()V

    .line 251
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$16(Landroid/view/View;)V
    .locals 2

    .line 254
    iget p1, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    .line 255
    const-string p1, "delta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "car_speed"

    iget v1, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    .line 256
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->cycleCarSpeed()V

    .line 258
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method static synthetic lambda$wireButtons$17(Landroid/view/View;)V
    .locals 0

    .line 261
    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p0, :cond_0

    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->triggerAirstrike()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$wireButtons$18(Landroid/view/View;)V
    .locals 0

    .line 264
    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p0, :cond_0

    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->recenterFlight()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$wireButtons$19(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    .line 268
    const-string v0, "max_performance"

    invoke-direct {p0, v0, p1}, Ldev/delta/quest/MainActivity;->saveBoolean(Ljava/lang/String;Z)V

    .line 269
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setMaxPerformanceEnabled(Z)V

    .line 270
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->showHomeIndex(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$20(Landroid/view/View;)V
    .locals 1

    .line 273
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    .line 274
    const-string v0, "max_predictions_enabled"

    invoke-direct {p0, v0, p1}, Ldev/delta/quest/MainActivity;->saveBoolean(Ljava/lang/String;Z)V

    .line 275
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setMaxPredictionsEnabled(Z)V

    .line 276
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$21(Landroid/view/View;)V
    .locals 3

    .line 279
    iget p1, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    const/4 v0, 0x0

    const/16 v1, 0x48

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x5a

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 v1, 0x78

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iput v1, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    .line 280
    const-string p1, "delta"

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "refresh_rate"

    iget v1, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_3

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->cycleRefreshRate()V

    .line 282
    :cond_3
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$22(Landroid/view/View;)V
    .locals 3

    .line 285
    iget p1, p0, Ldev/delta/quest/MainActivity;->resolution:I

    const/4 v0, 0x0

    const/16 v1, 0x800

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa00

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 v1, 0xc00

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iput v1, p0, Ldev/delta/quest/MainActivity;->resolution:I

    .line 286
    const-string p1, "delta"

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "resolution"

    iget v1, p0, Ldev/delta/quest/MainActivity;->resolution:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_3

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->cycleResolution()V

    .line 288
    :cond_3
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$23(Landroid/view/View;)V
    .locals 2

    .line 291
    iget p1, p0, Ldev/delta/quest/MainActivity;->foveation:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Ldev/delta/quest/MainActivity;->foveation:I

    .line 292
    const-string p1, "delta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "foveation"

    iget v1, p0, Ldev/delta/quest/MainActivity;->foveation:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->cycleFoveation()V

    .line 294
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$24(Landroid/view/View;)V
    .locals 1

    .line 297
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    .line 298
    const-string v0, "guardian_disabled"

    invoke-direct {p0, v0, p1}, Ldev/delta/quest/MainActivity;->saveBoolean(Ljava/lang/String;Z)V

    .line 299
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    invoke-virtual {p1, v0}, Ldev/delta/quest/DeltaService;->setGuardianDisabled(Z)V

    .line 300
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$25(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    .line 304
    const-string v0, "guardian_disabled"

    invoke-direct {p0, v0, p1}, Ldev/delta/quest/MainActivity;->saveBoolean(Ljava/lang/String;Z)V

    .line 305
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->restoreTracking()V

    .line 306
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$26(Landroid/view/View;)V
    .locals 0

    .line 309
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->resetAllRuntimeOverrides()V

    .line 310
    :cond_0
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->loadPreferences()V

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private synthetic lambda$wireButtons$27(Landroid/view/View;)V
    .locals 0

    .line 313
    const-string p1, "RT"

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->startTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wireButtons$28(Landroid/view/View;)V
    .locals 0

    .line 314
    const-string p1, "GRIP"

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->startTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wireButtons$29(Landroid/view/View;)V
    .locals 0

    .line 315
    const-string p1, "LT"

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->startTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wireButtons$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 218
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->showHomeIndex(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$30(Landroid/view/View;)V
    .locals 0

    .line 316
    const-string p1, "A"

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->startTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wireButtons$31(Landroid/view/View;)V
    .locals 0

    .line 317
    const-string p1, "B"

    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->startTrace(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wireButtons$32(Landroid/view/View;)V
    .locals 0

    .line 319
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->analyzeInputTraces()V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->traceStatus:Landroid/widget/TextView;

    sget p1, Ldev/delta/quest/R$string;->trace_connect_first:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$wireButtons$33(Landroid/view/View;)V
    .locals 0

    .line 323
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0}, Ldev/delta/quest/DeltaService;->runRuntimePoseProbe()V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->probeStatus:Landroid/widget/TextView;

    sget p1, Ldev/delta/quest/R$string;->probe_connect_first:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$wireButtons$34(Landroid/view/View;)V
    .locals 2

    .line 328
    iget-boolean p1, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    .line 329
    const-string p1, "delta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "animated_title"

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    .line 330
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    .line 332
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->restartTitleAnimation()V

    return-void
.end method

.method private synthetic lambda$wireButtons$35(Landroid/view/View;)V
    .locals 1

    .line 335
    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz p1, :cond_0

    sget-object p1, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->resetInputMappings()V

    .line 336
    :cond_0
    const-string p1, "delta"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "input_mapping_rt"

    .line 337
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "input_mapping_lt"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "input_mapping_a"

    .line 338
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "input_mapping_b"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$wireButtons$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 219
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 220
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 221
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 222
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 223
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private synthetic lambda$wireButtons$9(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x5

    .line 224
    invoke-direct {p0, p1}, Ldev/delta/quest/MainActivity;->openPage(I)V

    return-void
.end method

.method private loadPreferences()V
    .locals 10

    .line 187
    const-string v0, "delta"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    const-string v2, "fly_rt_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    .line 189
    const-string v2, "vertical_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    .line 190
    const-string v2, "car_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    .line 191
    const-string v2, "fly_speed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    .line 192
    const-string v2, "car_speed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    .line 193
    const-string v2, "max_performance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    .line 194
    const-string v2, "max_predictions_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    .line 195
    const-string v2, "refresh_rate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    .line 196
    const-string v2, "resolution"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldev/delta/quest/MainActivity;->resolution:I

    .line 197
    const-string v2, "foveation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldev/delta/quest/MainActivity;->foveation:I

    .line 198
    const-string v2, "guardian_disabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    .line 199
    const-string v1, "animated_title"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    .line 200
    const-string v1, "input_mapping_rt"

    const-string v2, "BTN_TR2"

    .line 201
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "input_mapping_lt"

    const-string v2, "BTN_TL2"

    .line 202
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "input_mapping_a"

    const-string v2, "BTN_A"

    .line 203
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "input_mapping_b"

    const-string v2, "BTN_B"

    .line 204
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v0, Ldev/delta/quest/R$string;->trace_idle:I

    .line 205
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Ldev/delta/quest/R$string;->probe_idle:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    .line 200
    invoke-direct/range {v3 .. v9}, Ldev/delta/quest/MainActivity;->updateDiagnostics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openPage(I)V
    .locals 5

    .line 406
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homePage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->contentPage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 408
    :goto_0
    iget-object v3, p0, Ldev/delta/quest/MainActivity;->pages:[Landroid/view/View;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    if-ne v0, p1, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    sget v0, Ldev/delta/quest/R$string;->movement_tab:I

    .line 410
    sget v1, Ldev/delta/quest/R$drawable;->ic_movement:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 411
    sget v0, Ldev/delta/quest/R$string;->locomotion_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_locomotion:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 412
    sget v0, Ldev/delta/quest/R$string;->graphics_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_graphics:I

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 413
    sget v0, Ldev/delta/quest/R$string;->tracking_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_tracking:I

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 414
    sget v0, Ldev/delta/quest/R$string;->input_lab_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_input_lab:I

    goto :goto_2

    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 415
    sget v0, Ldev/delta/quest/R$string;->diagnostics_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_diagnostics:I

    goto :goto_2

    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    .line 416
    sget v0, Ldev/delta/quest/R$string;->settings_tab:I

    sget v1, Ldev/delta/quest/R$drawable;->ic_settings:I

    .line 417
    :cond_7
    :goto_2
    iget-object p1, p0, Ldev/delta/quest/MainActivity;->sectionTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->sectionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private refreshServiceState()V
    .locals 8

    .line 507
    sget-object v7, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 508
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 508
    :goto_1
    invoke-direct {p0, v2, v0}, Ldev/delta/quest/MainActivity;->showConnectionState(ZZ)V

    if-nez v7, :cond_2

    return-void

    .line 511
    :cond_2
    invoke-direct {p0, v7}, Ldev/delta/quest/MainActivity;->syncSettingsFromService(Ldev/delta/quest/DeltaService;)V

    .line 512
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->isRightTriggerDown()Z

    move-result v1

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->isLeftTriggerDown()Z

    move-result v2

    .line 513
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getCameraX()F

    move-result v3

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getCameraY()F

    move-result v4

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getCameraZ()F

    move-result v5

    move-object v0, p0

    .line 512
    invoke-direct/range {v0 .. v5}, Ldev/delta/quest/MainActivity;->updateTelemetry(ZZFFF)V

    .line 514
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getInputRtCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getInputLtCode()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getInputACode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getInputBCode()Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getTraceStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ldev/delta/quest/DeltaService;->getProbeStatus()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 514
    invoke-direct/range {v0 .. v6}, Ldev/delta/quest/MainActivity;->updateDiagnostics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private renderControls()V
    .locals 9

    .line 362
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->flyRtButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->fly_rt_on:I

    sget v3, Ldev/delta/quest/R$string;->fly_rt_off:I

    invoke-direct {p0, v0, v1, v2, v3}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    .line 363
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->verticalButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->vertical_on:I

    sget v3, Ldev/delta/quest/R$string;->vertical_off:I

    invoke-direct {p0, v0, v1, v2, v3}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    .line 364
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->carButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->car_on:I

    sget v3, Ldev/delta/quest/R$string;->car_off:I

    invoke-direct {p0, v0, v1, v2, v3}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    .line 366
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->longArmsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->longArmsEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->long_arms_on:I

    sget v3, Ldev/delta/quest/R$string;->long_arms_off:I

    invoke-direct {p0, v0, v1, v2, v3}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    :cond_1
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->flySpeedButton:Landroid/widget/Button;

    iget v1, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v1, :cond_2

    sget v1, Ldev/delta/quest/R$string;->fly_speed_slow:I

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    .line 366
    sget v1, Ldev/delta/quest/R$string;->fly_speed_fast:I

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    .line 367
    sget v1, Ldev/delta/quest/R$string;->fly_speed_extreme:I

    goto :goto_0

    :cond_4
    sget v1, Ldev/delta/quest/R$string;->fly_speed_medium:I

    .line 365
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 368
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->carSpeedButton:Landroid/widget/Button;

    iget v1, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    if-nez v1, :cond_5

    sget v1, Ldev/delta/quest/R$string;->car_speed_slow:I

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    .line 369
    sget v1, Ldev/delta/quest/R$string;->car_speed_fast:I

    goto :goto_1

    :cond_6
    if-ne v1, v2, :cond_7

    .line 370
    sget v1, Ldev/delta/quest/R$string;->car_speed_extreme:I

    goto :goto_1

    :cond_7
    sget v1, Ldev/delta/quest/R$string;->car_speed_medium:I

    .line 368
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 371
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->maxPerformanceButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->max_performance_on:I

    sget v4, Ldev/delta/quest/R$string;->max_performance_off:I

    invoke-direct {p0, v0, v1, v2, v4}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    .line 373
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->maxPredictionsButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    sget v2, Ldev/delta/quest/R$string;->max_predictions_on:I

    sget v4, Ldev/delta/quest/R$string;->max_predictions_off:I

    invoke-direct {p0, v0, v1, v2, v4}, Ldev/delta/quest/MainActivity;->renderToggle(Landroid/widget/Button;ZII)V

    .line 375
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->refreshRateButton:Landroid/widget/Button;

    iget v1, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    const/16 v2, 0x48

    if-ne v1, v2, :cond_8

    sget v1, Ldev/delta/quest/R$string;->refresh_72:I

    goto :goto_2

    :cond_8
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_9

    .line 376
    sget v1, Ldev/delta/quest/R$string;->refresh_90:I

    goto :goto_2

    :cond_9
    const/16 v2, 0x78

    if-ne v1, v2, :cond_a

    .line 377
    sget v1, Ldev/delta/quest/R$string;->refresh_120:I

    goto :goto_2

    :cond_a
    sget v1, Ldev/delta/quest/R$string;->refresh_default:I

    .line 375
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 378
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->resolutionButton:Landroid/widget/Button;

    iget v1, p0, Ldev/delta/quest/MainActivity;->resolution:I

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    sget v1, Ldev/delta/quest/R$string;->resolution_2048:I

    goto :goto_3

    :cond_b
    const/16 v2, 0xa00

    if-ne v1, v2, :cond_c

    .line 379
    sget v1, Ldev/delta/quest/R$string;->resolution_2560:I

    goto :goto_3

    :cond_c
    const/16 v2, 0xc00

    if-ne v1, v2, :cond_d

    .line 380
    sget v1, Ldev/delta/quest/R$string;->resolution_3072:I

    goto :goto_3

    :cond_d
    sget v1, Ldev/delta/quest/R$string;->resolution_default:I

    .line 378
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 381
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->foveationButton:Landroid/widget/Button;

    iget v1, p0, Ldev/delta/quest/MainActivity;->foveation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    sget v1, Ldev/delta/quest/R$string;->foveation_low:I

    goto :goto_4

    :cond_e
    if-ne v1, v3, :cond_f

    .line 382
    sget v1, Ldev/delta/quest/R$string;->foveation_high:I

    goto :goto_4

    :cond_f
    sget v1, Ldev/delta/quest/R$string;->foveation_off:I

    .line 381
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 383
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->guardianButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    if-eqz v1, :cond_10

    sget v1, Ldev/delta/quest/R$string;->guardian_off:I

    goto :goto_5

    :cond_10
    sget v1, Ldev/delta/quest/R$string;->guardian_on:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 384
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->guardianButton:Landroid/widget/Button;

    .line 385
    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    if-eqz v1, :cond_11

    sget v1, Ldev/delta/quest/R$drawable;->button_outline_on:I

    goto :goto_6

    :cond_11
    sget v1, Ldev/delta/quest/R$drawable;->button_outline:I

    .line 384
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 386
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->animatedTitleButton:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    if-eqz v1, :cond_12

    .line 387
    sget v1, Ldev/delta/quest/R$string;->animated_title_on:I

    goto :goto_7

    :cond_12
    sget v1, Ldev/delta/quest/R$string;->animated_title_off:I

    .line 386
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 388
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->animatedTitleButton:Landroid/widget/Button;

    iget-boolean p0, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    if-eqz p0, :cond_13

    .line 389
    sget p0, Ldev/delta/quest/R$drawable;->button_outline_on:I

    goto :goto_8

    :cond_13
    sget p0, Ldev/delta/quest/R$drawable;->button_outline:I

    .line 388
    :goto_8
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method private renderToggle(Landroid/widget/Button;ZII)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    .line 393
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    if-eqz p2, :cond_1

    .line 394
    sget p0, Ldev/delta/quest/R$drawable;->button_outline_on:I

    goto :goto_1

    :cond_1
    sget p0, Ldev/delta/quest/R$drawable;->button_outline:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method private requestNotificationPermissionIfNeeded()V
    .locals 3

    .line 435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 436
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 438
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x64

    invoke-virtual {p0, v1, v0}, Ldev/delta/quest/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private restartTitleAnimation()V
    .locals 2

    .line 484
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->titleHandler:Landroid/os/Handler;

    iget-object v1, p0, Ldev/delta/quest/MainActivity;->titleAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->animatedTitleEnabled:Z

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->titleAnimationRunning:Z

    const/4 v1, 0x0

    .line 486
    iput v1, p0, Ldev/delta/quest/MainActivity;->titleFrame:I

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->titleHandler:Landroid/os/Handler;

    iget-object p0, p0, Ldev/delta/quest/MainActivity;->titleAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 488
    :cond_0
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->titleText:Landroid/widget/TextView;

    sget v0, Ldev/delta/quest/R$string;->app_name:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private saveBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 358
    const-string v0, "delta"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveModes()V
    .locals 3

    .line 351
    const-string v0, "delta"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/delta/quest/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fly_rt_enabled"

    iget-boolean v2, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    .line 352
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vertical_enabled"

    iget-boolean v2, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    .line 353
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "car_enabled"

    iget-boolean p0, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    .line 354
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showConnectionState(ZZ)V
    .locals 2

    .line 520
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->connectionStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Ldev/delta/quest/R$string;->connected:I

    goto :goto_0

    :cond_0
    sget v1, Ldev/delta/quest/R$string;->not_connected:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->connectionStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget p1, Ldev/delta/quest/R$color;->connected_green:I

    goto :goto_1

    :cond_1
    sget p1, Ldev/delta/quest/R$color;->muted:I

    :goto_1
    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->connectButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    const p1, 0x3f1eb852    # 0.62f

    goto :goto_2

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method private showHome()V
    .locals 2

    .line 422
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->contentPage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homePage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget v0, p0, Ldev/delta/quest/MainActivity;->homeIndex:I

    invoke-direct {p0, v0}, Ldev/delta/quest/MainActivity;->showHomeIndex(I)V

    .line 425
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->refreshServiceState()V

    return-void
.end method

.method private showHomeIndex(I)V
    .locals 4

    .line 398
    iput p1, p0, Ldev/delta/quest/MainActivity;->homeIndex:I

    .line 399
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homePageOne:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homePageTwo:Landroid/view/View;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homeBackButton:Landroid/widget/Button;

    const/4 v1, 0x4

    if-ne p1, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->homeNextButton:Landroid/widget/Button;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private startTrace(Ljava/lang/String;)V
    .locals 1

    .line 343
    sget-object v0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    if-eqz v0, :cond_1

    sget-object v0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {v0}, Ldev/delta/quest/DeltaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    sget-object p0, Ldev/delta/quest/DeltaService;->instance:Ldev/delta/quest/DeltaService;

    invoke-virtual {p0, p1}, Ldev/delta/quest/DeltaService;->startInputTrace(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_1
    :goto_0
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->traceStatus:Landroid/widget/TextView;

    sget p1, Ldev/delta/quest/R$string;->trace_connect_first:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private syncSettingsFromService(Ldev/delta/quest/DeltaService;)V
    .locals 1

    .line 492
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isFlyRtEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->flyRtEnabled:Z

    .line 493
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isVerticalEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->verticalEnabled:Z

    .line 494
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isCarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->carEnabled:Z

    .line 495
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getFlySpeedMode()I

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->flySpeedMode:I

    .line 496
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getCarSpeedMode()I

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->carSpeedMode:I

    .line 497
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isMaxPerformanceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->maxPerformanceEnabled:Z

    .line 498
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isMaxPredictionsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->maxPredictionsEnabled:Z

    .line 499
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isLongArmsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->longArmsEnabled:Z

    .line 500
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getLongArmsOffset()F

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->longArmsOffset:F

    .line 501
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getRefreshRate()I

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->refreshRate:I

    .line 500
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getResolution()I

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->resolution:I

    .line 501
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->getFoveation()I

    move-result v0

    iput v0, p0, Ldev/delta/quest/MainActivity;->foveation:I

    .line 502
    invoke-virtual {p1}, Ldev/delta/quest/DeltaService;->isGuardianDisabled()Z

    move-result p1

    iput-boolean p1, p0, Ldev/delta/quest/MainActivity;->guardianDisabled:Z

    .line 503
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    return-void
.end method

.method private updateDiagnostics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 453
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->mappingStatus:Landroid/widget/TextView;

    sget v1, Ldev/delta/quest/R$string;->mapping_format:I

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ldev/delta/quest/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 455
    iget-object p1, p0, Ldev/delta/quest/MainActivity;->traceStatus:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 456
    iget-object p0, p0, Ldev/delta/quest/MainActivity;->probeStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateTelemetry(ZZFFF)V
    .locals 5

    .line 443
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->inputStatus:Landroid/widget/TextView;

    sget v1, Ldev/delta/quest/R$string;->input_format:I

    .line 444
    const-string v2, "DOWN"

    const-string v3, "UP"

    if-eqz p1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 443
    invoke-virtual {p0, v1, v2}, Ldev/delta/quest/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->inputStatus:Landroid/widget/TextView;

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    .line 446
    :cond_2
    sget p1, Ldev/delta/quest/R$color;->muted:I

    goto :goto_3

    :cond_3
    :goto_2
    sget p1, Ldev/delta/quest/R$color;->connected_green:I

    :goto_3
    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->getColor(I)I

    move-result p1

    .line 445
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    iget-object p1, p0, Ldev/delta/quest/MainActivity;->cameraVector:Landroid/widget/TextView;

    sget p2, Ldev/delta/quest/R$string;->camera_vector:I

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    filled-new-array {p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ldev/delta/quest/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private wireButtons()V
    .locals 2

    .line 209
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->connectButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda0;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    sget v0, Ldev/delta/quest/R$id;->wifi_disconnect_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda2;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homeBackButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda14;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->homeNextButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda21;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v0, Ldev/delta/quest/R$id;->movement_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda23;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    sget v0, Ldev/delta/quest/R$id;->locomotion_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda24;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v0, Ldev/delta/quest/R$id;->graphics_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda25;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v0, Ldev/delta/quest/R$id;->tracking_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda26;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v0, Ldev/delta/quest/R$id;->input_lab_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda27;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget v0, Ldev/delta/quest/R$id;->diagnostics_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda28;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    sget v0, Ldev/delta/quest/R$id;->settings_tab_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda11;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    sget v0, Ldev/delta/quest/R$id;->content_back_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda22;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->flyRtButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda29;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->verticalButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda30;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->carButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda31;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->longArmsButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda36;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->flySpeedButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda32;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->carSpeedButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda33;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    sget v0, Ldev/delta/quest/R$id;->airstrike_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda34;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget v0, Ldev/delta/quest/R$id;->recenter_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda35;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->maxPerformanceButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda1;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->maxPredictionsButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda3;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->refreshRateButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda4;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->resolutionButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda5;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->foveationButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda6;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->guardianButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda7;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    sget v0, Ldev/delta/quest/R$id;->restore_tracking_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda8;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget v0, Ldev/delta/quest/R$id;->cleanup_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda9;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    sget v0, Ldev/delta/quest/R$id;->trace_rt_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda10;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    sget v0, Ldev/delta/quest/R$id;->trace_grip_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda12;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sget v0, Ldev/delta/quest/R$id;->trace_lt_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda13;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    sget v0, Ldev/delta/quest/R$id;->trace_a_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda15;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    sget v0, Ldev/delta/quest/R$id;->trace_b_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda16;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    sget v0, Ldev/delta/quest/R$id;->analyze_traces_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda17;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    sget v0, Ldev/delta/quest/R$id;->run_probe_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda18;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->animatedTitleButton:Landroid/widget/Button;

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda19;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    sget v0, Ldev/delta/quest/R$id;->reset_input_button:I

    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Ldev/delta/quest/MainActivity$$ExternalSyntheticLambda20;-><init>(Ldev/delta/quest/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6

    .line 527
    iget-boolean v0, p0, Ldev/delta/quest/MainActivity;->frameCounterRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-wide v0, p0, Ldev/delta/quest/MainActivity;->sampleStartNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-wide p1, p0, Ldev/delta/quest/MainActivity;->sampleStartNanos:J

    iput v1, p0, Ldev/delta/quest/MainActivity;->framesSinceSample:I

    .line 529
    :cond_1
    iget v0, p0, Ldev/delta/quest/MainActivity;->framesSinceSample:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldev/delta/quest/MainActivity;->framesSinceSample:I

    .line 530
    iget-wide v2, p0, Ldev/delta/quest/MainActivity;->sampleStartNanos:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1dcd6500

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    int-to-float v0, v0

    const v4, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, v4

    long-to-float v2, v2

    div-float/2addr v0, v2

    .line 533
    iget-object v2, p0, Ldev/delta/quest/MainActivity;->fpsText:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "FPS: %.0f"

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iput v1, p0, Ldev/delta/quest/MainActivity;->framesSinceSample:I

    .line 535
    iput-wide p1, p0, Ldev/delta/quest/MainActivity;->sampleStartNanos:J

    .line 537
    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 542
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->contentPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->showHome()V

    goto :goto_0

    .line 543
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Ldev/delta/quest/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 137
    invoke-virtual {p0}, Ldev/delta/quest/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 138
    sget p1, Ldev/delta/quest/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->setContentView(I)V

    .line 140
    sget p1, Ldev/delta/quest/R$id;->home_page:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->homePage:Landroid/view/View;

    .line 141
    sget p1, Ldev/delta/quest/R$id;->home_page_one:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->homePageOne:Landroid/view/View;

    .line 142
    sget p1, Ldev/delta/quest/R$id;->home_page_two:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->homePageTwo:Landroid/view/View;

    .line 143
    sget p1, Ldev/delta/quest/R$id;->content_page:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->contentPage:Landroid/view/View;

    const/4 p1, 0x7

    .line 144
    new-array p1, p1, [Landroid/view/View;

    sget v0, Ldev/delta/quest/R$id;->movement_page:I

    .line 145
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget v0, Ldev/delta/quest/R$id;->locomotion_page:I

    .line 146
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    sget v0, Ldev/delta/quest/R$id;->graphics_page:I

    .line 147
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    sget v0, Ldev/delta/quest/R$id;->tracking_page:I

    .line 148
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    sget v0, Ldev/delta/quest/R$id;->input_lab_page:I

    .line 149
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p1, v2

    sget v0, Ldev/delta/quest/R$id;->diagnostics_page:I

    .line 150
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p1, v2

    sget v0, Ldev/delta/quest/R$id;->settings_page:I

    .line 151
    invoke-virtual {p0, v0}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, p1, v2

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->pages:[Landroid/view/View;

    .line 153
    sget p1, Ldev/delta/quest/R$id;->title_text:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->titleText:Landroid/widget/TextView;

    .line 154
    sget p1, Ldev/delta/quest/R$id;->section_title:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->sectionTitle:Landroid/widget/TextView;

    .line 155
    sget p1, Ldev/delta/quest/R$id;->section_icon:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->sectionIcon:Landroid/widget/ImageView;

    .line 156
    sget p1, Ldev/delta/quest/R$id;->fps_text:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->fpsText:Landroid/widget/TextView;

    .line 157
    sget p1, Ldev/delta/quest/R$id;->connection_status:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->connectionStatus:Landroid/widget/TextView;

    .line 158
    sget p1, Ldev/delta/quest/R$id;->input_status:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->inputStatus:Landroid/widget/TextView;

    .line 159
    sget p1, Ldev/delta/quest/R$id;->camera_vector:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->cameraVector:Landroid/widget/TextView;

    .line 160
    sget p1, Ldev/delta/quest/R$id;->mapping_status:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->mappingStatus:Landroid/widget/TextView;

    .line 161
    sget p1, Ldev/delta/quest/R$id;->trace_status:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->traceStatus:Landroid/widget/TextView;

    .line 162
    sget p1, Ldev/delta/quest/R$id;->probe_status:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->probeStatus:Landroid/widget/TextView;

    .line 163
    sget p1, Ldev/delta/quest/R$id;->connect_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->connectButton:Landroid/widget/Button;

    .line 164
    sget p1, Ldev/delta/quest/R$id;->home_back_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->homeBackButton:Landroid/widget/Button;

    .line 165
    sget p1, Ldev/delta/quest/R$id;->home_next_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->homeNextButton:Landroid/widget/Button;

    .line 166
    sget p1, Ldev/delta/quest/R$id;->fly_rt_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->flyRtButton:Landroid/widget/Button;

    .line 167
    sget p1, Ldev/delta/quest/R$id;->vertical_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->verticalButton:Landroid/widget/Button;

    .line 168
    sget p1, Ldev/delta/quest/R$id;->fly_speed_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->flySpeedButton:Landroid/widget/Button;

    .line 169
    sget p1, Ldev/delta/quest/R$id;->car_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->carButton:Landroid/widget/Button;

    .line 170
    sget p1, Ldev/delta/quest/R$id;->car_speed_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->carSpeedButton:Landroid/widget/Button;

    .line 171
    sget p1, Ldev/delta/quest/R$id;->long_arms_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->longArmsButton:Landroid/widget/Button;



    .line 174
    sget p1, Ldev/delta/quest/R$id;->max_performance_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->maxPerformanceButton:Landroid/widget/Button;

    .line 172
    sget p1, Ldev/delta/quest/R$id;->max_predictions_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->maxPredictionsButton:Landroid/widget/Button;

    .line 173
    sget p1, Ldev/delta/quest/R$id;->refresh_rate_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->refreshRateButton:Landroid/widget/Button;

    .line 174
    sget p1, Ldev/delta/quest/R$id;->resolution_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->resolutionButton:Landroid/widget/Button;

    .line 175
    sget p1, Ldev/delta/quest/R$id;->foveation_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->foveationButton:Landroid/widget/Button;

    .line 176
    sget p1, Ldev/delta/quest/R$id;->guardian_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->guardianButton:Landroid/widget/Button;

    .line 177
    sget p1, Ldev/delta/quest/R$id;->animated_title_button:I

    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ldev/delta/quest/MainActivity;->animatedTitleButton:Landroid/widget/Button;

    const p1, 0x1020002

    .line 179
    invoke-virtual {p0, p1}, Ldev/delta/quest/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ldev/delta/quest/MainActivity;->applySegoeUi(Landroid/view/View;)V

    .line 180
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->loadPreferences()V

    .line 181
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->wireButtons()V

    .line 182
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->renderControls()V

    .line 183
    invoke-direct {p0, v1}, Ldev/delta/quest/MainActivity;->showHomeIndex(I)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 463
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->statusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "dev.moonlit.quest.action.STATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Ldev/delta/quest/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->frameCounterRunning:Z

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Ldev/delta/quest/MainActivity;->framesSinceSample:I

    const-wide/16 v0, 0x0

    .line 467
    iput-wide v0, p0, Ldev/delta/quest/MainActivity;->sampleStartNanos:J

    .line 468
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 469
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->refreshServiceState()V

    .line 470
    invoke-direct {p0}, Ldev/delta/quest/MainActivity;->restartTitleAnimation()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->frameCounterRunning:Z

    .line 476
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 477
    iget-object v1, p0, Ldev/delta/quest/MainActivity;->statusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Ldev/delta/quest/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 478
    iput-boolean v0, p0, Ldev/delta/quest/MainActivity;->titleAnimationRunning:Z

    .line 479
    iget-object v0, p0, Ldev/delta/quest/MainActivity;->titleHandler:Landroid/os/Handler;

    iget-object v1, p0, Ldev/delta/quest/MainActivity;->titleAnimator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
