.class Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDetailRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1074
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 1075
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1084
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1080
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 1088
    return-void
.end method
