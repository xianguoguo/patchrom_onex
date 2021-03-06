.class public final Landroid/view/InputQueue$FinishedCallback;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishedCallback"
.end annotation


# static fields
.field private static final DEBUG_RECYCLING:Z = false

.field private static final RECYCLE_MAX_COUNT:I = 0x4

.field private static sRecycleCount:I

.field private static sRecycleHead:Landroid/view/InputQueue$FinishedCallback;


# instance fields
.field private mFinishedToken:J

.field private mRecycleNext:Landroid/view/InputQueue$FinishedCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static obtain(J)Landroid/view/InputQueue$FinishedCallback;
    .locals 3
    .parameter "finishedToken"

    .prologue
    .line 154
    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 155
    :try_start_0
    sget-object v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 156
    .local v0, callback:Landroid/view/InputQueue$FinishedCallback;
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    sput-object v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 158
    sget v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    .line 159
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    .line 163
    :goto_0
    iput-wide p0, v0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    .line 164
    monitor-exit v2

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Landroid/view/InputQueue$FinishedCallback;

    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    invoke-direct {v0}, Landroid/view/InputQueue$FinishedCallback;-><init>()V

    .restart local v0       #callback:Landroid/view/InputQueue$FinishedCallback;
    goto :goto_0

    .line 165
    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finished(Z)V
    .locals 6
    .parameter "handled"

    .prologue
    const-wide/16 v4, -0x1

    .line 169
    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 170
    :try_start_0
    iget-wide v2, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Event finished callback already invoked."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 174
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    #calls: Landroid/view/InputQueue;->nativeFinished(JZ)V
    invoke-static {v2, v3, p1}, Landroid/view/InputQueue;->access$100(JZ)V

    .line 175
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    .line 177
    sget v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 178
    sget-object v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    iput-object v0, p0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    .line 179
    sput-object p0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .line 180
    sget v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    .line 186
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    return-void
.end method
