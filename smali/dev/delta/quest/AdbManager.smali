.class public final Ldev/delta/quest/AdbManager;
.super Ljava/lang/Object;
.source "AdbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/delta/quest/AdbManager$ConnectionCallback;,
        Ldev/delta/quest/AdbManager$LineCallback;,
        Ldev/delta/quest/AdbManager$OutputCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeltaAdb"

.field private static volatile instance:Ldev/delta/quest/AdbManager;


# instance fields
.field private volatile callback:Ldev/delta/quest/AdbManager$ConnectionCallback;

.field private final commandExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile connected:Z

.field private volatile connecting:Z

.field private connection:Lcom/tananaev/adblib/AdbConnection;

.field private final context:Landroid/content/Context;

.field private interactiveShell:Lcom/tananaev/adblib/AdbStream;

.field private final ioExecutor:Ljava/util/concurrent/ExecutorService;

.field private final latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private final stateDrainScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$A688-8mWwN-vVMlZcsTQ9JJANVQ(Ldev/delta/quest/AdbManager;)V
    .locals 0

    invoke-direct {p0}, Ldev/delta/quest/AdbManager;->lambda$scheduleStateDrain$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ILD3BbtoIXg0Z6t2FFYdFtJBfjM(Ldev/delta/quest/AdbManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/AdbManager;->lambda$executeThenDisconnect$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODq3B4gly1hDPpOl9IcmCEsaYHI(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/delta/quest/AdbManager;->lambda$executeForOutput$4(Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUoJPJsc49JRc0fXwh822QTzmMs(Ldev/delta/quest/AdbManager;)V
    .locals 0

    invoke-direct {p0}, Ldev/delta/quest/AdbManager;->connectBlocking()V

    return-void
.end method

.method public static synthetic $r8$lambda$k2STZQxSfd84vEHd_khL9py7EbY(Ldev/delta/quest/AdbManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/delta/quest/AdbManager;->lambda$execute$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m7Ph5O6715y7P3K5zKmNcZMQY8g(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/delta/quest/AdbManager;->lambda$startEventReader$3(Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/AdbManager;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/delta/quest/AdbManager;->commandExecutor:Ljava/util/concurrent/ExecutorService;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldev/delta/quest/AdbManager;->stateDrainScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    iput-object p1, p0, Ldev/delta/quest/AdbManager;->context:Landroid/content/Context;

    return-void
.end method

.method private static closeQuietly(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 328
    :cond_0
    :try_start_0
    instance-of v0, p0, Lcom/tananaev/adblib/AdbStream;

    if-eqz v0, :cond_1

    .line 329
    check-cast p0, Lcom/tananaev/adblib/AdbStream;

    invoke-virtual {p0}, Lcom/tananaev/adblib/AdbStream;->close()V

    goto :goto_0

    .line 330
    :cond_1
    instance-of v0, p0, Lcom/tananaev/adblib/AdbConnection;

    if-eqz v0, :cond_2

    .line 331
    check-cast p0, Lcom/tananaev/adblib/AdbConnection;

    invoke-virtual {p0}, Lcom/tananaev/adblib/AdbConnection;->close()V

    goto :goto_0

    .line 332
    :cond_2
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 333
    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private connectBlocking()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    :try_start_0
    new-instance v2, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda3;-><init>()V

    .line 100
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ldev/delta/quest/AdbManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "adb_priv.key"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ldev/delta/quest/AdbManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "adb_pub.key"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-static {v2, v3, v4}, Lcom/tananaev/adblib/AdbCrypto;->loadAdbKeyPair(Lcom/tananaev/adblib/AdbBase64;Ljava/io/File;Ljava/io/File;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v2

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v2}, Lcom/tananaev/adblib/AdbCrypto;->generateAdbKeyPair(Lcom/tananaev/adblib/AdbBase64;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v3, v4}, Lcom/tananaev/adblib/AdbCrypto;->saveAdbKeyPair(Ljava/io/File;Ljava/io/File;)V

    .line 110
    :goto_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    const/16 v5, 0x15b3

    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 114
    invoke-static {v3, v2}, Lcom/tananaev/adblib/AdbConnection;->create(Ljava/net/Socket;Lcom/tananaev/adblib/AdbCrypto;)Lcom/tananaev/adblib/AdbConnection;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/tananaev/adblib/AdbConnection;->connect()V

    .line 118
    const-string v4, "shell:"

    invoke-virtual {v2, v4}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v4

    .line 120
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :try_start_2
    iput-object v3, p0, Ldev/delta/quest/AdbManager;->socket:Ljava/net/Socket;

    .line 122
    iput-object v2, p0, Ldev/delta/quest/AdbManager;->connection:Lcom/tananaev/adblib/AdbConnection;

    .line 123
    iput-object v4, p0, Ldev/delta/quest/AdbManager;->interactiveShell:Lcom/tananaev/adblib/AdbStream;

    .line 124
    iput-boolean v1, p0, Ldev/delta/quest/AdbManager;->connected:Z

    .line 125
    iput-boolean v0, p0, Ldev/delta/quest/AdbManager;->connecting:Z

    .line 126
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->callback:Ldev/delta/quest/AdbManager$ConnectionCallback;

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1}, Ldev/delta/quest/AdbManager$ConnectionCallback;->onConnected()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 126
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 132
    :goto_1
    const-string v3, "DeltaAdb"

    const-string v4, "Local ADB connection failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    invoke-static {v1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_6
    iput-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    .line 136
    iput-boolean v0, p0, Ldev/delta/quest/AdbManager;->connecting:Z

    .line 137
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    iget-object p0, p0, Ldev/delta/quest/AdbManager;->callback:Ldev/delta/quest/AdbManager$ConnectionCallback;

    if-eqz p0, :cond_1

    .line 140
    invoke-static {v2}, Ldev/delta/quest/AdbManager;->readableError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ldev/delta/quest/AdbManager$ConnectionCallback;->onDisconnected(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 137
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method private declared-synchronized disconnectInternal(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 298
    :goto_1
    iput-boolean v1, p0, Ldev/delta/quest/AdbManager;->connected:Z

    .line 299
    iput-boolean v1, p0, Ldev/delta/quest/AdbManager;->connecting:Z

    .line 300
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->interactiveShell:Lcom/tananaev/adblib/AdbStream;

    invoke-static {v1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->connection:Lcom/tananaev/adblib/AdbConnection;

    invoke-static {v1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->socket:Ljava/net/Socket;

    invoke-static {v1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    .line 304
    iput-object v2, p0, Ldev/delta/quest/AdbManager;->interactiveShell:Lcom/tananaev/adblib/AdbStream;

    .line 305
    iput-object v2, p0, Ldev/delta/quest/AdbManager;->connection:Lcom/tananaev/adblib/AdbConnection;

    .line 306
    iput-object v2, p0, Ldev/delta/quest/AdbManager;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 308
    iget-object p2, p0, Ldev/delta/quest/AdbManager;->callback:Ldev/delta/quest/AdbManager$ConnectionCallback;

    if-eqz p2, :cond_2

    .line 310
    invoke-interface {p2, p1}, Ldev/delta/quest/AdbManager$ConnectionCallback;->onDisconnected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_2
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

.method public static getInstance(Landroid/content/Context;)Ldev/delta/quest/AdbManager;
    .locals 2

    .line 63
    sget-object v0, Ldev/delta/quest/AdbManager;->instance:Ldev/delta/quest/AdbManager;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Ldev/delta/quest/AdbManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Ldev/delta/quest/AdbManager;->instance:Ldev/delta/quest/AdbManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ldev/delta/quest/AdbManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Ldev/delta/quest/AdbManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Ldev/delta/quest/AdbManager;->instance:Ldev/delta/quest/AdbManager;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 70
    :cond_1
    :goto_0
    sget-object p0, Ldev/delta/quest/AdbManager;->instance:Ldev/delta/quest/AdbManager;

    return-object p0
.end method

.method static synthetic lambda$connectBlocking$0([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 99
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execute$1(Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Ldev/delta/quest/AdbManager;->writeCommand(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$executeForOutput$4(Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V
    .locals 6

    const-string v0, "shell:"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 252
    :try_start_0
    iget-object v3, p0, Ldev/delta/quest/AdbManager;->connection:Lcom/tananaev/adblib/AdbConnection;

    if-eqz v3, :cond_3

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const v3, 0x7d000

    if-le v0, v3, :cond_0

    .line 264
    const-string p0, "\n[output truncated by Delta]\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    :cond_2
    :goto_0
    invoke-static {p1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 254
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ADB connection is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v2

    .line 269
    :goto_1
    :try_start_3
    invoke-static {p0}, Ldev/delta/quest/AdbManager;->readableError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v0, "DeltaAdb"

    const-string v3, "ADB output command failed"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    invoke-static {p1}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 274
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v2}, Ldev/delta/quest/AdbManager$OutputCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 272
    :goto_3
    invoke-static {v2}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ldev/delta/quest/AdbManager$OutputCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_5
    throw p0
.end method

.method private synthetic lambda$executeThenDisconnect$5(Ljava/lang/String;)V
    .locals 1

    .line 287
    invoke-direct {p0, p1}, Ldev/delta/quest/AdbManager;->writeCommand(Ljava/lang/String;)V

    .line 288
    const-string p1, "Disconnected"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/delta/quest/AdbManager;->disconnectInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$scheduleStateDrain$2()V
    .locals 3

    :goto_0
    const/4 v0, 0x0

    .line 172
    :try_start_0
    iget-boolean v1, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0, v1}, Ldev/delta/quest/AdbManager;->writeCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->stateDrainScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0}, Ldev/delta/quest/AdbManager;->scheduleStateDrain()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 176
    iget-object v2, p0, Ldev/delta/quest/AdbManager;->stateDrainScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-direct {p0}, Ldev/delta/quest/AdbManager;->scheduleStateDrain()V

    .line 182
    :cond_2
    throw v1
.end method

.method private synthetic lambda$startEventReader$3(Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V
    .locals 4

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iget-object v1, p0, Ldev/delta/quest/AdbManager;->connection:Lcom/tananaev/adblib/AdbConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 234
    invoke-static {v0}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    return-void

    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/tananaev/adblib/AdbConnection;->open(Ljava/lang/String;)Lcom/tananaev/adblib/AdbStream;

    move-result-object v0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    :cond_1
    iget-boolean v1, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v0}, Lcom/tananaev/adblib/AdbStream;->read()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 215
    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_3
    :goto_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 222
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    invoke-interface {p2, v3}, Ldev/delta/quest/AdbManager$LineCallback;->onLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 229
    :try_start_2
    iget-boolean p2, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz p2, :cond_4

    .line 230
    const-string p2, "DeltaAdb"

    const-string v1, "ADB event reader stopped"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-static {p1}, Ldev/delta/quest/AdbManager;->readableError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ldev/delta/quest/AdbManager;->disconnectInternal(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :cond_4
    :goto_1
    invoke-static {v0}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    return-void

    :goto_2
    invoke-static {v0}, Ldev/delta/quest/AdbManager;->closeQuietly(Ljava/lang/Object;)V

    .line 235
    throw p0
.end method

.method private static readableError(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 318
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private scheduleStateDrain()V
    .locals 3

    .line 166
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->stateDrainScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->commandExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda0;-><init>(Ldev/delta/quest/AdbManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeCommand(Ljava/lang/String;)V
    .locals 2

    .line 188
    :try_start_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->interactiveShell:Lcom/tananaev/adblib/AdbStream;

    .line 189
    iget-boolean v1, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tananaev/adblib/AdbStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 194
    const-string v0, "DeltaAdb"

    const-string v1, "ADB shell write failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-static {p1}, Ldev/delta/quest/AdbManager;->readableError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldev/delta/quest/AdbManager;->disconnectInternal(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Ldev/delta/quest/AdbManager$ConnectionCallback;)V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iput-object p1, p0, Ldev/delta/quest/AdbManager;->callback:Ldev/delta/quest/AdbManager$ConnectionCallback;

    .line 83
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Ldev/delta/quest/AdbManager$ConnectionCallback;->onConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    iget-boolean p1, p0, Ldev/delta/quest/AdbManager;->connecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 90
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 92
    :try_start_2
    iput-boolean p1, p0, Ldev/delta/quest/AdbManager;->connecting:Z

    .line 93
    iget-object p1, p0, Ldev/delta/quest/AdbManager;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda2;-><init>(Ldev/delta/quest/AdbManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 293
    const-string v0, "Disconnected"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldev/delta/quest/AdbManager;->disconnectInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2

    .line 147
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->commandExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda5;-><init>(Ldev/delta/quest/AdbManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public executeForOutput(Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V
    .locals 2

    .line 241
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda4;-><init>(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$OutputCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 243
    const-string p0, ""

    const-string p1, "ADB is not connected"

    invoke-interface {p2, p0, p1}, Ldev/delta/quest/AdbManager$OutputCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public executeLatestState(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->latestStateCommand:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Ldev/delta/quest/AdbManager;->scheduleStateDrain()V

    :cond_1
    :goto_0
    return-void
.end method

.method public executeThenDisconnect(Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Ldev/delta/quest/AdbManager;->disconnect()V

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->commandExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda6;-><init>(Ldev/delta/quest/AdbManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    return p0
.end method

.method public startEventReader(Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V
    .locals 2

    .line 201
    iget-boolean v0, p0, Ldev/delta/quest/AdbManager;->connected:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Ldev/delta/quest/AdbManager;->ioExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Ldev/delta/quest/AdbManager$$ExternalSyntheticLambda1;-><init>(Ldev/delta/quest/AdbManager;Ljava/lang/String;Ldev/delta/quest/AdbManager$LineCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
