.class Lcom/htc/music/HtcMusic$34;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 5160
    iput-object p1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5164
    packed-switch p2, :pswitch_data_0

    .line 5199
    :cond_0
    :goto_0
    return-void

    .line 5166
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 5168
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 5170
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v2

    #calls: Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$7100(Lcom/htc/music/HtcMusic;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5171
    :catch_0
    move-exception v0

    .line 5172
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5175
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5177
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5182
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 5184
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->addtoPlaylist()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$7200(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 5185
    :cond_5
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5187
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5190
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->chooseShareType()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$7400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5193
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRingtone()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$7500(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5196
    :pswitch_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic$34;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
