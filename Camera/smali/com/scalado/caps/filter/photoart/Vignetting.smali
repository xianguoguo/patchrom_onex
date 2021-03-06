.class public final Lcom/scalado/caps/filter/photoart/Vignetting;
.super Lcom/scalado/caps/Filter;
.source "Vignetting.java"


# instance fields
.field private color:Lcom/scalado/base/Color;

.field private region:Lcom/scalado/base/Rect;

.field private transitionSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 115
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeClassInit()V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 28
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;->setHasActiveFilter(Z)V

    .line 30
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 98
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 100
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 105
    return-void
.end method

.method public set(Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V
    .locals 5
    .parameter "region"
    .parameter "transitionSize"
    .parameter "color"

    .prologue
    const v4, 0x47ffff00

    const/high16 v3, 0x3f80

    .line 63
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v0

    .line 68
    .local v0, viewport:Lcom/scalado/base/Rect;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal region x-value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x4170

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 72
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal transitionSize value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v2, p2, v3

    div-float v2, v4, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_6

    .line 75
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal region width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_6
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v2, p2, v3

    div-float v2, v4, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_7

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_8

    .line 78
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal region height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_8
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    if-ltz v1, :cond_9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 81
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal region y-value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_a
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    if-le v1, v2, :cond_b

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal region width/height ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_b
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSet(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 90
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    .line 91
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    .line 92
    iput-object p3, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    .line 93
    return-void
.end method
