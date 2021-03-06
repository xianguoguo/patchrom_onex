.class public Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;
.super Ljava/lang/Object;
.source "AnimationGridItem.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemAnimationGetter;


# static fields
.field private static final CLICK_ANIM_DURATION_IN:I = 0x3c

.field private static final CLICK_ANIM_DURATION_OUT:I = 0x6e

.field private static final CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F; = null

.field private static final CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F; = null

.field private static final PRESS_ANIM_DURATION_IN:I = 0x50

.field private static final PRESS_ANIM_DURATION_OUT:I = 0x64


# instance fields
.field private mDurationAnimIn:I

.field private mDurationAnimOut:I

.field private mDurationClickAnimIn:I

.field private mDurationClickAnimOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f666666

    .line 24
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F;

    .line 25
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 28
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 29
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    .line 30
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    return v0
.end method

.method static synthetic access$100()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method static synthetic access$200()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method


# virtual methods
.method public onClickAnimation(Lcom/htc/sunny2/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 43
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    if-nez v2, :cond_0

    .line 44
    const/16 v2, 0x3c

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    .line 45
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    if-nez v2, :cond_1

    .line 46
    const/16 v2, 0x6e

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimOut:I

    .line 48
    :cond_1
    move-object v1, p1

    .line 49
    .local v1, view:Lcom/htc/sunny2/view/SView;
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 51
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationClickAnimIn:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 53
    sget-object v2, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 54
    new-instance v2, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem$1;-><init>(Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;Lcom/htc/sunny2/view/SView;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 75
    return-void
.end method

.method public onPressAnimation(Lcom/htc/sunny2/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 82
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    if-nez v2, :cond_0

    .line 83
    const/16 v2, 0x50

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 85
    :cond_0
    move-object v1, p1

    .line 86
    .local v1, view:Lcom/htc/sunny2/view/SView;
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 87
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 89
    sget-object v2, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 92
    return-void
.end method

.method public onReleaseAnimation(Lcom/htc/sunny2/view/SView;)V
    .locals 4
    .parameter "sview"

    .prologue
    .line 97
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    if-nez v2, :cond_0

    .line 98
    const/16 v2, 0x64

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 101
    :cond_0
    move-object v1, p1

    .line 102
    .local v1, view:Lcom/htc/sunny2/view/SView;
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 103
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 105
    sget-object v2, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_OUT:Lcom/htc/sunny2/view/Vector3F;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->CLICK_ANIM_IN:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 107
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 108
    return-void
.end method

.method public setAnimInDuration(I)V
    .locals 0
    .parameter "nTime"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimIn:I

    .line 35
    return-void
.end method

.method public setAnimOutDuration(I)V
    .locals 0
    .parameter "nTime"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/animation/AnimationGridItem;->mDurationAnimOut:I

    .line 39
    return-void
.end method
