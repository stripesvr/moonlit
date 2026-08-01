.class public Lcom/tananaev/adblib/AdbStream;
.super Ljava/lang/Object;
.source "AdbStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final adbConn:Lcom/tananaev/adblib/AdbConnection;

.field private volatile isClosed:Z

.field private final localId:I

.field private volatile pendingClose:Z

.field private final readQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile remoteId:I

.field private final writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/tananaev/adblib/AdbConnection;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    .line 60
    iput p2, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-boolean p2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    return-void
.end method


# virtual methods
.method addPayload([B)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 224
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/tananaev/adblib/AdbStream;->notifyClose(Z)V

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateClose(II)[B

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v1

    .line 233
    :try_start_1
    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v2, v2, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 234
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 235
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 228
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isClosed()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    return p0
.end method

.method notifyClose(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iput-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->pendingClose:Z

    goto :goto_0

    .line 119
    :cond_0
    iput-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    .line 123
    :goto_0
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    iget-object p1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter p1

    .line 127
    :try_start_1
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 125
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public read()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 143
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v2, :cond_2

    .line 151
    iget-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->pendingClose:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->readQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 153
    iput-boolean v2, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    .line 155
    :cond_1
    monitor-exit v0

    return-object v1

    .line 148
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method readyForWrite()V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method sendReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1}, Lcom/tananaev/adblib/AdbProtocol;->generateReady(II)[B

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v2, v2, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 91
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateRemoteId(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 169
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    const/4 p1, 0x1

    .line 170
    new-array v1, p1, [B

    aput-byte v0, v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/tananaev/adblib/AdbStream;->write([BZ)V

    return-void
.end method

.method public write([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 193
    monitor-enter p0

    .line 195
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->writeReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/tananaev/adblib/AdbStream;->isClosed:Z

    if-nez v0, :cond_2

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 204
    iget v0, p0, Lcom/tananaev/adblib/AdbStream;->localId:I

    iget v1, p0, Lcom/tananaev/adblib/AdbStream;->remoteId:I

    invoke-static {v0, v1, p1}, Lcom/tananaev/adblib/AdbProtocol;->generateWrite(II[B)[B

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v0, v0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    monitor-enter v0

    .line 207
    :try_start_1
    iget-object v1, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object v1, v1, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_1

    .line 210
    iget-object p0, p0, Lcom/tananaev/adblib/AdbStream;->adbConn:Lcom/tananaev/adblib/AdbConnection;

    iget-object p0, p0, Lcom/tananaev/adblib/AdbConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 211
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 199
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 201
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
