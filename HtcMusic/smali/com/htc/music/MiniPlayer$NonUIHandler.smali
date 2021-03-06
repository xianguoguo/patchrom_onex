.class Lcom/htc/music/MiniPlayer$NonUIHandler;
.super Landroid/os/Handler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 970
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    .line 971
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 972
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 975
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 977
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 978
    .local v0, albumArtPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 979
    const/4 v7, 0x1

    .line 981
    .local v7, sampleSize:I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 982
    .local v2, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 983
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 984
    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 985
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 986
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 987
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v6, v8, 0x1

    .line 988
    .local v6, nextWidth:I
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v5, v8, 0x1

    .line 989
    .local v5, nextHeight:I
    :goto_1
    iget-object v8, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v8}, Lcom/htc/music/MiniPlayer;->access$200(Lcom/htc/music/MiniPlayer;)I

    move-result v8

    if-le v6, v8, :cond_1

    iget-object v8, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v8}, Lcom/htc/music/MiniPlayer;->access$200(Lcom/htc/music/MiniPlayer;)I

    move-result v8

    if-le v5, v8, :cond_1

    .line 990
    shl-int/lit8 v7, v7, 0x1

    .line 991
    shr-int/lit8 v6, v6, 0x1

    .line 992
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 995
    :cond_1
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 996
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 997
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1000
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1001
    .local v4, msgUI:Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1004
    .local v3, data:Landroid/os/Bundle;
    const-string v8, "DECODED_BITMAP"

    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1005
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1007
    iget-object v8, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
    .end packed-switch
.end method
