.class public Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlRecentAppZoomTransAnim.java"


# static fields
.field public static final TYPE_FADE_ANIMATION:I = 0x1

.field public static final TYPE_NORMAL_ANIMATION:I = 0x0

.field public static final TYPE_NO_ANIMATION:I = 0x2


# instance fields
.field private mAnimDuration:J

.field protected mLayerBottom:I

.field protected mLayerLeft:I

.field protected mLayerRight:I

.field protected mLayerTop:I

.field private mRecentAppAnimType:I

.field private final mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    .line 23
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    .line 31
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 35
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 52
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setAnimationType(I)V

    .line 54
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    .line 23
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    .line 31
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 35
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 45
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setAnimationType(I)V

    .line 47
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x5dd

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 152
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    .line 23
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    .line 31
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_ENTER"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 35
    const-string v0, "TRANSIT_RECENTAPP_ZOOM_EXIT"

    invoke-static {v2, v4, v3, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    .line 161
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setAnimationType(I)V

    .line 163
    iget-wide v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mAnimDuration:J

    invoke-super {p0, v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 164
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 114
    .local v1, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    .local v0, layer:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 116
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 117
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 127
    :goto_0
    return-object v1

    .line 121
    :cond_0
    const-string v2, "0"

    aput-object v2, v1, v3

    .line 122
    const-string v2, "0"

    aput-object v2, v1, v4

    .line 123
    const-string v2, "0"

    aput-object v2, v1, v5

    .line 124
    const-string v2, "0"

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getLayerArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 93
    iget v1, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    if-ltz v1, :cond_1

    .line 94
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentAppAnimType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    return v0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 132
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 67
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->scaleCurrentDuration(F)V

    .line 70
    :cond_0
    return-void
.end method

.method public setLayerArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "_layer"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    .line 77
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    .line 78
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    .line 79
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    .line 87
    :cond_0
    return-void
.end method

.method public setRecentAppAnimType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mLayerBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->mRecentAppAnimType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
