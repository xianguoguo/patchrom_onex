.class public Landroid/webkit/ZoomManager$HTCSmartZoom;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTCSmartZoom"
.end annotation


# instance fields
.field detectNodeBySelection:Ljava/lang/Runnable;

.field detectbyselect:Z

.field public mAlignAfterDrag:Z

.field public mDrawInSchedule:Z

.field public mInScaleToFit:Z

.field public mOverlapView:Landroid/webkit/HTCZoomView;

.field public mScaleFitNode:I

.field public mSendViewSizeZoom:Z

.field public mWebView:Landroid/webkit/WebView;

.field myX:I

.field myY:I

.field final synthetic this$0:Landroid/webkit/ZoomManager;

.field tmpInfo:Landroid/webkit/SelectionUnitInfo;


# direct methods
.method public constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1503
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    .line 1494
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 1495
    iput v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 1496
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mOverlapView:Landroid/webkit/HTCZoomView;

    .line 1497
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mSendViewSizeZoom:Z

    .line 1498
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    .line 1499
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    .line 1501
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    .line 1514
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectbyselect:Z

    .line 1896
    new-instance v0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$HTCSmartZoom$3;-><init>(Landroid/webkit/ZoomManager$HTCSmartZoom;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectNodeBySelection:Ljava/lang/Runnable;

    .line 1505
    return-void
.end method

.method public constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1507
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    .line 1494
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 1495
    iput v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 1496
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mOverlapView:Landroid/webkit/HTCZoomView;

    .line 1497
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mSendViewSizeZoom:Z

    .line 1498
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    .line 1499
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    .line 1501
    iput-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    .line 1514
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectbyselect:Z

    .line 1896
    new-instance v0, Landroid/webkit/ZoomManager$HTCSmartZoom$3;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$HTCSmartZoom$3;-><init>(Landroid/webkit/ZoomManager$HTCSmartZoom;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectNodeBySelection:Ljava/lang/Runnable;

    .line 1508
    iput-object p2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    .line 1509
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    .line 1510
    new-instance v0, Landroid/webkit/HTCZoomView;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/HTCZoomView;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mOverlapView:Landroid/webkit/HTCZoomView;

    .line 1511
    return-void
.end method

.method private IsTablet()Z
    .locals 2

    .prologue
    .line 1683
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    .line 1688
    :cond_0
    const/4 v0, 0x1

    .line 1689
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ScaleToFit(Landroid/graphics/Rect;F)V
    .locals 4
    .parameter "nodeRect"
    .parameter "scale"

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    .line 1878
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1879
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 1882
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1883
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v1, v1, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v2, v2, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v3, v3, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1892
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mOverlapView:Landroid/webkit/HTCZoomView;

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/webkit/HTCZoomView;->StartAnimationZoom(Landroid/graphics/Rect;FF)V

    .line 1893
    invoke-direct {p0, p1, p2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->setNewZoomScale(Landroid/graphics/Rect;F)V

    .line 1894
    return-void
.end method

.method private ScrollToAlign(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "nodeRect"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1863
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 1865
    .local v0, viewHeight:I
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v1

    iget v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-virtual {v1, v2}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1866
    :cond_0
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v7, v6}, Landroid/webkit/WebView;->myScrollTo(IIZI)V

    .line 1871
    :goto_0
    return-void

    .line 1869
    :cond_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    shr-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v7, v6}, Landroid/webkit/WebView;->myScrollTo(IIZI)V

    goto :goto_0
.end method

.method private SmartTouchUp(I)V
    .locals 6
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    .line 1766
    if-nez p1, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1769
    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    const/4 v4, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mZoomScale:F
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$2602(Landroid/webkit/ZoomManager;F)F

    .line 1770
    iput p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 1785
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Landroid/webkit/WebView;->DEFAULT_TEXT_RATIO:F

    div-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Landroid/webkit/WebView;->setDefaultTextWidth(I)V

    .line 1786
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    invoke-static {}, Landroid/webkit/WebView;->getDefaultTextWidth()I

    move-result v4

    invoke-virtual {v3, p1, v5, v4}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v1

    .line 1787
    .local v1, nodeRect:Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 1788
    const-string/jumbo v3, "webviewZoom"

    const-string/jumbo v4, "nodeRect is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1792
    :cond_1
    invoke-direct {p0, v1}, Landroid/webkit/ZoomManager$HTCSmartZoom;->getZoomWidth(Landroid/graphics/Rect;)I

    move-result v0

    .line 1797
    .local v0, ZoomWidth:I
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 1798
    .local v2, scale:F
    invoke-direct {p0, v2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->checkScale(F)F

    move-result v2

    .line 1800
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 1801
    const-string/jumbo v3, "webviewZoom"

    const-string v4, "align for same scale"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4, v5}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v1

    .line 1803
    invoke-direct {p0, v1}, Landroid/webkit/ZoomManager$HTCSmartZoom;->ScrollToAlign(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1815
    :cond_2
    invoke-direct {p0, v1, v2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->ScaleToFit(Landroid/graphics/Rect;F)V

    goto :goto_0
.end method

.method private SmartTouchUp(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 1695
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Landroid/webkit/WebView;->DEFAULT_TEXT_RATIO:F

    div-float/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Landroid/webkit/WebView;->setDefaultTextWidth(I)V

    .line 1696
    invoke-static {}, Landroid/webkit/WebView;->getDefaultTextWidth()I

    move-result v0

    .line 1697
    .local v0, NodeWidth:I
    div-int/lit8 v2, v0, 0x2

    .line 1699
    .local v2, halfWidth:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1700
    .local v3, nodeRect:Landroid/graphics/Rect;
    if-ge p1, v2, :cond_0

    .line 1701
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 1705
    :goto_0
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    if-ge v5, v6, :cond_1

    .line 1706
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1710
    :goto_1
    if-ge p2, v2, :cond_2

    .line 1711
    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 1715
    :goto_2
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    if-ge v5, v6, :cond_3

    .line 1716
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1720
    :goto_3
    iput v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 1721
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    const/4 v6, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mZoomScale:F
    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->access$2602(Landroid/webkit/ZoomManager;F)F

    .line 1734
    invoke-direct {p0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->IsTablet()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1735
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 1736
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5, v7}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1737
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1755
    .local v1, ZoomWidth:I
    :goto_4
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1756
    .local v4, scale:F
    invoke-direct {p0, v4}, Landroid/webkit/ZoomManager$HTCSmartZoom;->checkScale(F)F

    move-result v4

    .line 1758
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_7

    .line 1759
    invoke-direct {p0, v3}, Landroid/webkit/ZoomManager$HTCSmartZoom;->ScrollToAlign(Landroid/graphics/Rect;)V

    .line 1763
    :goto_5
    return-void

    .line 1703
    .end local v1           #ZoomWidth:I
    .end local v4           #scale:F
    :cond_0
    sub-int v5, p1, v2

    iput v5, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1708
    :cond_1
    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1713
    :cond_2
    sub-int v5, p2, v2

    iput v5, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1718
    :cond_3
    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 1739
    :cond_4
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5, v7}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1740
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1       #ZoomWidth:I
    goto :goto_4

    .line 1744
    .end local v1           #ZoomWidth:I
    :cond_5
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1745
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5, v7}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1746
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .restart local v1       #ZoomWidth:I
    goto :goto_4

    .line 1748
    .end local v1           #ZoomWidth:I
    :cond_6
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    const/4 v6, 0x1

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1749
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$2700(Landroid/webkit/ZoomManager;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1       #ZoomWidth:I
    goto :goto_4

    .line 1761
    .restart local v4       #scale:F
    :cond_7
    invoke-direct {p0, v3, v4}, Landroid/webkit/ZoomManager$HTCSmartZoom;->ScaleToFit(Landroid/graphics/Rect;F)V

    goto :goto_5
.end method

.method static synthetic access$2000(Landroid/webkit/ZoomManager$HTCSmartZoom;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1492
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$HTCSmartZoom;->SmartTouchUp(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/ZoomManager$HTCSmartZoom;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1492
    invoke-direct {p0, p1, p2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->SmartTouchUp(II)V

    return-void
.end method

.method private alignToCenter(I)V
    .locals 13
    .parameter "node"

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 2002
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->AbortScrollerAnimation()V

    .line 2003
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v10

    invoke-virtual {v10, p1, v0, v9}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v4

    .line 2005
    .local v4, nodeRect:Landroid/graphics/Rect;
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    .line 2006
    .local v5, oldX:I
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    .line 2010
    .local v6, oldY:I
    if-eqz v4, :cond_0

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v11

    if-gt v10, v11, :cond_0

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v10}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2011
    :cond_0
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2012
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v10}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 2013
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 2014
    .local v2, newLeft:I
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v3, v10, Landroid/graphics/Rect;->right:I

    .line 2015
    .local v3, newRight:I
    if-nez v4, :cond_1

    .line 2016
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #nodeRect:Landroid/graphics/Rect;
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2019
    .restart local v4       #nodeRect:Landroid/graphics/Rect;
    :cond_1
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v7

    .line 2022
    .local v7, textWrapWidth:I
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v10, v7, :cond_7

    .line 2023
    .local v0, adjustWidth:Z
    :goto_0
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v11, v11, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    if-le v10, v7, :cond_8

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v11, v7, 0x1

    sub-int v2, v10, v11

    .line 2025
    :goto_1
    if-eqz v0, :cond_9

    .end local v7           #textWrapWidth:I
    :goto_2
    add-int v3, v2, v7

    .line 2027
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v11, v11, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v2, v10, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2033
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v10}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 2037
    .end local v0           #adjustWidth:Z
    .end local v2           #newLeft:I
    .end local v3           #newRight:I
    :cond_2
    const/4 v1, 0x0

    .line 2038
    .local v1, nX:I
    if-eqz v4, :cond_d

    .line 2040
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v10}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v10

    iget v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-virtual {v10, v11}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v11

    if-gt v10, v11, :cond_b

    .line 2042
    :cond_3
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    iget-object v12, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v12

    shr-int/lit8 v12, v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    .line 2043
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 2045
    :cond_4
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    sub-int v8, v10, v11

    .line 2046
    .local v8, y:I
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 2047
    const/4 v8, 0x0

    .line 2051
    :goto_3
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 2052
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v8}, Landroid/webkit/WebView;->setMyScrollY(I)V

    .line 2072
    .end local v8           #y:I
    :goto_4
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollX()I

    move-result v10

    if-ne v5, v10, :cond_5

    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollY()I

    move-result v10

    if-eq v6, v10, :cond_6

    .line 2073
    :cond_5
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScrollX()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollY()I

    move-result v12

    invoke-virtual {v10, v11, v12, v5, v6}, Landroid/webkit/WebView;->myonScrollChanged(IIII)V

    .line 2076
    :cond_6
    iput v9, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 2078
    iget-object v9, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 2079
    iget-object v9, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 2080
    iget-object v9, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 2083
    iget-object v9, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->contentInvalidateAll()V

    .line 2085
    return-void

    .end local v1           #nX:I
    .restart local v2       #newLeft:I
    .restart local v3       #newRight:I
    .restart local v7       #textWrapWidth:I
    :cond_7
    move v0, v9

    .line 2022
    goto/16 :goto_0

    .line 2023
    .restart local v0       #adjustWidth:Z
    :cond_8
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 2025
    :cond_9
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, v10, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto/16 :goto_2

    .line 2049
    .end local v0           #adjustWidth:Z
    .end local v2           #newLeft:I
    .end local v3           #newRight:I
    .end local v7           #textWrapWidth:I
    .restart local v1       #nX:I
    .restart local v8       #y:I
    :cond_a
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v8}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v8

    goto :goto_3

    .line 2055
    .end local v8           #y:I
    :cond_b
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    iget-object v12, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    .line 2056
    if-gez v1, :cond_c

    const/4 v1, 0x0

    .line 2059
    :cond_c
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    iget-object v12, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v12

    shr-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v8

    .line 2061
    .restart local v8       #y:I
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 2062
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v8}, Landroid/webkit/WebView;->setMyScrollY(I)V

    goto/16 :goto_4

    .line 2065
    .end local v8           #y:I
    :cond_d
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollY()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 2066
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v9}, Landroid/webkit/WebView;->setMyScrollY(I)V

    goto/16 :goto_4

    .line 2068
    :cond_e
    iget-object v10, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v12, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollY()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setMyScrollY(I)V

    goto/16 :goto_4
.end method

.method private alignToLeft(I)V
    .locals 9
    .parameter "node"

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 2089
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->AbortScrollerAnimation()V

    .line 2090
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v7

    invoke-virtual {v7, p1, v0, v6}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v4

    .line 2092
    .local v4, nodeRect:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2093
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v7}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 2094
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 2095
    .local v2, newLeft:I
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 2096
    .local v3, newRight:I
    if-nez v4, :cond_0

    .line 2097
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #nodeRect:Landroid/graphics/Rect;
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2100
    .restart local v4       #nodeRect:Landroid/graphics/Rect;
    :cond_0
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 2101
    .local v5, textWrapWidth:I
    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 2102
    .local v0, adjustWidth:Z
    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    if-le v6, v5, :cond_5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    shr-int/lit8 v7, v5, 0x1

    sub-int v2, v6, v7

    .line 2104
    :goto_1
    if-eqz v0, :cond_6

    .end local v5           #textWrapWidth:I
    :goto_2
    add-int v3, v2, v5

    .line 2106
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v2, v6, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2111
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v6}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 2114
    .end local v0           #adjustWidth:Z
    .end local v2           #newLeft:I
    .end local v3           #newRight:I
    :cond_1
    if-eqz v4, :cond_3

    .line 2115
    const/4 v1, 0x0

    .line 2116
    .local v1, nX:I
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    .line 2117
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 2118
    :cond_2
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 2122
    .end local v1           #nX:I
    :cond_3
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 2123
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 2124
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 2125
    return-void

    .restart local v2       #newLeft:I
    .restart local v3       #newRight:I
    .restart local v5       #textWrapWidth:I
    :cond_4
    move v0, v6

    .line 2101
    goto :goto_0

    .line 2102
    .restart local v0       #adjustWidth:Z
    :cond_5
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 2104
    :cond_6
    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_2
.end method

.method private checkScale(F)F
    .locals 7
    .parameter "scale"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x42c8

    .line 1635
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    .line 1636
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result p1

    .line 1639
    :cond_0
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2300(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 1640
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMaxZoomScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2300(Landroid/webkit/ZoomManager;)F

    move-result p1

    .line 1644
    :cond_1
    invoke-direct {p0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->IsTablet()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1645
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 1646
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MIN_SMARTZOOM_SCALE:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    .line 1647
    .local v2, minScale:F
    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    .line 1648
    move p1, v2

    .line 1650
    :cond_2
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MAX_SMARTZOOM_SCALE:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    .line 1651
    .local v1, maxScale:F
    cmpl-float v3, p1, v1

    if-lez v3, :cond_3

    .line 1652
    move p1, v1

    .line 1679
    .end local v1           #maxScale:F
    .end local v2           #minScale:F
    :cond_3
    :goto_0
    return p1

    .line 1654
    :cond_4
    const/4 v0, 0x0

    .line 1655
    .local v0, bMobileSite:Z
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1656
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getViewportWidth()I

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 1657
    :cond_5
    :goto_1
    if-ne v0, v3, :cond_3

    .line 1658
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result p1

    goto :goto_0

    :cond_6
    move v0, v4

    .line 1656
    goto :goto_1

    .line 1662
    .end local v0           #bMobileSite:Z
    :cond_7
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1663
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MIN_SMARTZOOM_SCALE:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    .line 1664
    .restart local v2       #minScale:F
    cmpg-float v3, p1, v2

    if-gez v3, :cond_8

    .line 1665
    move p1, v2

    .line 1667
    :cond_8
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MAX_SMARTZOOM_SCALE:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    .line 1668
    .restart local v1       #maxScale:F
    cmpl-float v3, p1, v1

    if-lez v3, :cond_3

    .line 1669
    move p1, v1

    goto :goto_0

    .line 1671
    .end local v1           #maxScale:F
    .end local v2           #minScale:F
    :cond_9
    const/4 v0, 0x0

    .line 1672
    .restart local v0       #bMobileSite:Z
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1673
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getViewportWidth()I

    move-result v5

    if-nez v5, :cond_b

    move v0, v3

    .line 1674
    :cond_a
    :goto_2
    if-ne v0, v3, :cond_3

    .line 1675
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;)F

    move-result p1

    goto :goto_0

    :cond_b
    move v0, v4

    .line 1673
    goto :goto_2
.end method

.method private getZoomWidth(Landroid/graphics/Rect;)I
    .locals 6
    .parameter "nodeRect"

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    .line 1824
    invoke-direct {p0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->IsTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1825
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 1826
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v3, v5}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1827
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    iget v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1828
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 1829
    .local v0, ratioX:F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1830
    .local v1, ratioY:F
    :goto_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 1831
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1856
    .end local v0           #ratioX:F
    .end local v1           #ratioY:F
    :goto_2
    return v2

    .line 1828
    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v0, v3

    goto :goto_0

    .line 1829
    .restart local v0       #ratioX:F
    :cond_1
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v1, v2

    goto :goto_1

    .line 1833
    .restart local v1       #ratioY:F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_2

    .line 1835
    .end local v0           #ratioX:F
    .end local v1           #ratioY:F
    :cond_3
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v2, v2, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/webkit/WebView;->getDefaultTextWidth()I

    move-result v2

    goto :goto_2

    .line 1838
    :cond_5
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v2, v5}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1839
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mDefaultScale:F
    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$2400(Landroid/webkit/ZoomManager;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_2

    .line 1843
    :cond_6
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1844
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v3, v5}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1845
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v3

    iget v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1846
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_7

    move v0, v2

    .line 1847
    .restart local v0       #ratioX:F
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 1848
    .restart local v1       #ratioY:F
    :goto_4
    cmpl-float v2, v0, v1

    if-lez v2, :cond_9

    .line 1849
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_2

    .line 1846
    .end local v0           #ratioX:F
    .end local v1           #ratioY:F
    :cond_7
    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v0, v3

    goto :goto_3

    .line 1847
    .restart local v0       #ratioX:F
    :cond_8
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v1, v2

    goto :goto_4

    .line 1851
    .restart local v1       #ratioY:F
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto/16 :goto_2

    .line 1853
    .end local v0           #ratioX:F
    .end local v1           #ratioY:F
    :cond_a
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget-object v2, v2, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Landroid/webkit/WebView;->getDefaultTextWidth()I

    move-result v2

    goto/16 :goto_2

    .line 1855
    :cond_c
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$2502(Landroid/webkit/ZoomManager;Z)Z

    .line 1856
    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$2700(Landroid/webkit/ZoomManager;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_2
.end method

.method private setNewZoomScale(Landroid/graphics/Rect;F)V
    .locals 8
    .parameter "nodeRect"
    .parameter "scale"

    .prologue
    const/4 v7, 0x0

    .line 1951
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v4

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    .line 1952
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$2800(Landroid/webkit/ZoomManager;)Landroid/webkit/CallbackProxy;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 1955
    :cond_0
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v4, p2}, Landroid/webkit/ZoomManager;->access$1802(Landroid/webkit/ZoomManager;F)F

    .line 1957
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iput v7, v4, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 1959
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4, p2}, Landroid/webkit/ZoomManager;->access$302(Landroid/webkit/ZoomManager;F)F

    .line 1960
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    const/high16 v5, 0x3f80

    div-float/2addr v5, p2

    #setter for: Landroid/webkit/ZoomManager;->mInvActualScale:F
    invoke-static {v4, v5}, Landroid/webkit/ZoomManager;->access$2902(Landroid/webkit/ZoomManager;F)F

    .line 1963
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v4}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 1966
    if-eqz p1, :cond_2

    .line 1967
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    .line 1968
    .local v0, viewHeight:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    .line 1971
    .local v1, viewWidth:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mInZoomOverview:Z
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$2500(Landroid/webkit/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v4

    iget v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-virtual {v4, v5}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1974
    :cond_1
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    shr-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    .line 1976
    .local v2, x:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    shr-int/lit8 v5, v0, 0x1

    sub-int v3, v4, v5

    .line 1977
    .local v3, y:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1978
    const/4 v3, 0x0

    .line 1983
    :goto_0
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 1984
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setMyScrollY(I)V

    .line 1995
    :goto_1
    const-string/jumbo v4, "webviewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preScrollTo scroll to x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    .end local v0           #viewHeight:I
    .end local v1           #viewWidth:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mSendViewSizeZoom:Z

    .line 1998
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 1999
    return-void

    .line 1980
    .restart local v0       #viewHeight:I
    .restart local v1       #viewWidth:I
    .restart local v2       #x:I
    .restart local v3       #y:I
    :cond_3
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    goto :goto_0

    .line 1987
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_4
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    .line 1988
    .restart local v2       #x:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    .line 1990
    .restart local v3       #y:I
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setMyScrollX(I)V

    .line 1991
    iget-object v4, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->setMyScrollY(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2129
    iput v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    .line 2130
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    .line 2131
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 2132
    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    .line 2133
    return-void
.end method

.method public doDoubleTap(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1518
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 1519
    .local v4, settings:Landroid/webkit/WebSettings;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 1577
    iput p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->myX:I

    .line 1578
    iput p2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->myY:I

    .line 1581
    iget-boolean v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    if-nez v5, :cond_2

    .line 1582
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1583
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v5

    const-wide/32 v6, 0xa00000

    invoke-virtual {v5, v6, v7}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 1586
    :cond_0
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/webkit/HTCWebCore;->nativeSmartTouchUp(II)I

    move-result v0

    .line 1587
    .local v0, HitNode:I
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v5}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 1588
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/webkit/HTCWebCore;->nativeisImageNode(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1589
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectbyselect:Z

    .line 1591
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->detectNodeBySelection:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1593
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget v5, v5, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v5, :cond_1

    .line 1594
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->tmpInfo:Landroid/webkit/SelectionUnitInfo;

    iget v0, v5, Landroid/webkit/SelectionUnitInfo;->node:I

    .line 1597
    :cond_1
    move v1, v0

    .line 1598
    .local v1, HitNodeTmp:I
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1599
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v6, Landroid/webkit/ZoomManager$HTCSmartZoom$1;

    invoke-direct {v6, p0, v1}, Landroid/webkit/ZoomManager$HTCSmartZoom$1;-><init>(Landroid/webkit/ZoomManager$HTCSmartZoom;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1628
    :goto_0
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1629
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1632
    .end local v0           #HitNode:I
    .end local v1           #HitNodeTmp:I
    :cond_2
    return-void

    .line 1605
    .restart local v0       #HitNode:I
    .restart local v1       #HitNodeTmp:I
    :cond_3
    move v2, p1

    .line 1606
    .local v2, nX:I
    move v3, p2

    .line 1607
    .local v3, nY:I
    iget-object v5, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v6, Landroid/webkit/ZoomManager$HTCSmartZoom$2;

    invoke-direct {v6, p0, v2, v3}, Landroid/webkit/ZoomManager$HTCSmartZoom$2;-><init>(Landroid/webkit/ZoomManager$HTCSmartZoom;II)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public finishScaleToFit()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1928
    iget-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    if-eqz v0, :cond_0

    .line 1929
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 1930
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 1931
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mInScaleToFit:Z

    .line 1935
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getIsLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 1937
    iput-boolean v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    .line 1938
    iget v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->alignToCenter(I)V

    .line 1939
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->updateRestoreScroll(II)V

    .line 1945
    :goto_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 1947
    :cond_0
    return-void

    .line 1942
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->contentInvalidateAll()V

    goto :goto_0
.end method

.method public recordNewContentSize(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 2136
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentWidth(I)V

    .line 2137
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setContentHeight(I)V

    .line 2139
    iget-boolean v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    if-eqz v0, :cond_1

    .line 2140
    iget v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->alignToLeft(I)V

    .line 2143
    :goto_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mDrawInSchedule:Z

    .line 2144
    iput-boolean v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mAlignAfterDrag:Z

    .line 2147
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2148
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 2150
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 2152
    :cond_0
    return-void

    .line 2142
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom;->mScaleFitNode:I

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager$HTCSmartZoom;->alignToCenter(I)V

    goto :goto_0
.end method
