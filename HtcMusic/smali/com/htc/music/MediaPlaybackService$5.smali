.class Lcom/htc/music/MediaPlaybackService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1320
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1321
    .local v2, name:Ljava/lang/String;
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1322
    .local v0, a2dpOn:I
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver.onReceive(): a2dpOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1326
    const/4 v1, 0x0

    .line 1327
    .local v1, isPlaying:Z
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1328
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v1

    .line 1329
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver.onReceive(): mPlayer.isPlaying() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :goto_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$4300(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1334
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 1335
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "mA2DPReceiver.onReceive()"

    #calls: Lcom/htc/music/MediaPlaybackService;->resetPlayerForWirelessConnect(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$4400(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1346
    .end local v1           #isPlaying:Z
    :cond_0
    :goto_1
    return-void

    .line 1331
    .restart local v1       #isPlaying:Z
    :cond_1
    const-string v3, "[MediaPlaybackService]"

    const-string v4, "mA2DPReceiver.onReceive(): mPlayer.isInitialized() == false"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :cond_2
    if-eqz v1, :cond_0

    .line 1339
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mA2DPReceiver, a2dpOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying is true!, BT headset is disconnected, pause it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$5;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto :goto_1
.end method
