.class Lcom/android/server/ConnectivityService$DualMode;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualMode"
.end annotation


# static fields
.field private static final DM_EVENT_ENTRY:I = 0x1

.field private static final DM_EVENT_EXIT:I = 0x0

.field private static final DM_EVENT_NONE:I = -0x1

.field private static final EXIT_TIME_OUT:J = 0x4e20L


# instance fields
.field private dualModeState:I

.field exitSystemTime:J

.field private previousActiveDefaultNetwork:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 5832
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5830
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ConnectivityService$DualMode;->exitSystemTime:J

    .line 5833
    iput v2, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    .line 5834
    iput v2, p0, Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I

    .line 5835
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5819
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$DualMode;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService$DualMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5819
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$DualMode;->isDisableDualmode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService$DualMode;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5819
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$DualMode;->handleConnectDualMode(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService$DualMode;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5819
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$DualMode;->handleDualModeSwitch(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService$DualMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5819
    iget v0, p0, Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I

    return v0
.end method

.method private handleConnectDualMode(Landroid/net/NetworkInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "needHtcLateUpdateNetworkState"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 5930
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 5934
    .local v2, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 5936
    .local v0, isFailover:Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnect() networkinfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isFailover="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5938
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v1, v3, v2

    .line 5941
    .local v1, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, v3, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    invoke-direct {v3}, Lcom/android/server/ConnectivityService$DualMode;->isIgnore1xrtt()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v3

    if-ne v3, v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/ConnectivityService$DualMode;->exitSystemTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 5949
    const-string v3, "ConnectivityService"

    const-string v4, "[Dual mode]:handleConnectDualMode: Dual Mode Exit handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    .line 5952
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v3, v3, v8

    check-cast v3, Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->disconnect()Z

    .line 5954
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #setter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3, v7}, Lcom/android/server/ConnectivityService;->access$1202(Lcom/android/server/ConnectivityService;I)I

    .line 5955
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->notifyActiveNetworkUpdate()V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    .line 5957
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Dual mode]:handleConnectDualMode: mActiveDefaultNetwork = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    invoke-interface {v1, v7}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 5962
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 5963
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    invoke-static {v3, p1, v7}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    .line 5964
    if-eqz p2, :cond_1

    .line 5965
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_2

    .line 5969
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v3, p1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 5977
    :cond_2
    :goto_0
    return-void

    .line 5972
    :cond_3
    const-string v3, "ConnectivityService"

    const-string v4, "[Dual mode]:handleConnectDualMode: Normal Mode handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5974
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I

    .line 5975
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;Z)V
    invoke-static {v3, p1, p2}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V

    goto :goto_0
.end method

.method private handleDualModeSwitch(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 5895
    iget-object v1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5896
    const/4 v0, 0x0

    .line 5897
    .local v0, dmNet:Landroid/net/NetworkStateTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 5921
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    .line 5925
    .end local v0           #dmNet:Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5911
    .restart local v0       #dmNet:Landroid/net/NetworkStateTracker;
    :pswitch_1
    const-string v1, "ConnectivityService"

    const-string v2, "[Dual mode]:receive DM_EVENT_EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    iput v3, p0, Lcom/android/server/ConnectivityService$DualMode;->dualModeState:I

    .line 5913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$DualMode;->exitSystemTime:J

    .line 5914
    iget-object v1, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v0, v1, v3

    .line 5915
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5916
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5918
    :cond_1
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    .line 5897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisableDualmode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 5852
    const-string v1, ""

    .line 5855
    .local v1, property:Ljava/lang/String;
    :try_start_0
    const-string v3, "wimax.dualmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5860
    :goto_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5870
    :cond_0
    :goto_1
    return v2

    .line 5856
    :catch_0
    move-exception v0

    .line 5857
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get dualmode enabled failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_0

    .line 5865
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    .line 5867
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isIgnore1xrtt()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 5874
    const-string v1, ""

    .line 5877
    .local v1, property:Ljava/lang/String;
    :try_start_0
    const-string v3, "wimax.dualmode.1xrtt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5882
    :goto_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5891
    :cond_0
    :goto_1
    return v2

    .line 5878
    :catch_0
    move-exception v0

    .line 5879
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DualMode;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get 1xrtt enabled failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_0

    .line 5887
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-ne v3, v4, :cond_0

    .line 5888
    const/4 v2, 0x0

    goto :goto_1
.end method
