.class Lcom/htc/music/MediaPlaybackErrorActivity$7;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 767
    packed-switch p2, :pswitch_data_0

    .line 772
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 769
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$7;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    .line 770
    const/4 v0, 0x1

    goto :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
