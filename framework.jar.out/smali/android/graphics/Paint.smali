.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field static final DEFAULT_PAINT_FLAGS:I = 0x100

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public hasShadow:Z

.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field public mNativePaint:I

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;

.field public shadowColor:I

.field public shadowDx:F

.field public shadowDy:F

.field public shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 76
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 79
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 82
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 335
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 344
    invoke-static {}, Landroid/graphics/Paint;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 345
    or-int/lit16 v0, p1, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 350
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 361
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_initWithPaint(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 362
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 363
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private native nSetShadowLayer(FFFI)V
.end method

.method private static native nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V
.end method

.method private native native_breakText(Ljava/lang/String;ZF[F)I
.end method

.method private native native_breakText([CIIF[F)I
.end method

.method private static native native_getFillPath(III)Z
.end method

.method private static native native_getFontMetrics(ILandroid/graphics/Paint$FontMetrics;)F
.end method

.method private static native native_getStrokeCap(I)I
.end method

.method private static native native_getStrokeJoin(I)I
.end method

.method private static native native_getStyle(I)I
.end method

.method private static native native_getTextAlign(I)I
.end method

.method private static native native_getTextGlyphs(ILjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(IILjava/lang/String;IIFFI)V
.end method

.method private static native native_getTextPath(II[CIIFFI)V
.end method

.method private static native native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F
.end method

.method private static native native_getTextRunAdvances(I[CIIIII[FII)F
.end method

.method private native native_getTextRunCursor(ILjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(I[CIIIII)I
.end method

.method private static native native_getTextWidths(ILjava/lang/String;II[F)I
.end method

.method private static native native_getTextWidths(I[CII[F)I
.end method

.method private static native native_init()I
.end method

.method private static native native_initWithPaint(I)I
.end method

.method private native native_measureText(Ljava/lang/String;)F
.end method

.method private native native_measureText(Ljava/lang/String;II)F
.end method

.method private native native_measureText([CII)F
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setColorFilter(II)I
.end method

.method private static native native_setMaskFilter(II)I
.end method

.method private static native native_setPathEffect(II)I
.end method

.method private static native native_setRasterizer(II)I
.end method

.method private static native native_setShader(II)I
.end method

.method private static native native_setStrokeCap(II)V
.end method

.method private static native native_setStrokeJoin(II)V
.end method

.method private static native native_setStyle(II)V
.end method

.method private static native native_setTextAlign(II)V
.end method

.method private static native native_setTypeface(II)I
.end method

.method private static native native_setXfermode(II)I
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 396
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 397
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 398
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 399
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 400
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 401
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 402
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 404
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 405
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 406
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 408
    iget-boolean v0, p1, Landroid/graphics/Paint;->hasShadow:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 409
    iget v0, p1, Landroid/graphics/Paint;->shadowDx:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 410
    iget v0, p1, Landroid/graphics/Paint;->shadowDy:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 411
    iget v0, p1, Landroid/graphics/Paint;->shadowRadius:F

    iput v0, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 412
    iget v0, p1, Landroid/graphics/Paint;->shadowColor:I

    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 414
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 415
    return-void
.end method

.method private final setColor_w(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->native_setColor(I)V

    .line 684
    return-void
.end method


# virtual methods
.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1412
    if-nez p1, :cond_0

    .line 1413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 1416
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1419
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    move v6, v2

    .line 1439
    .end local p1
    :goto_0
    return v6

    .line 1422
    .restart local p1
    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1423
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    goto :goto_0

    .line 1427
    .restart local p1
    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1430
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1432
    if-eqz p4, :cond_5

    .line 1433
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 1438
    .local v6, result:I
    :goto_1
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0

    .line 1435
    .end local v6           #result:I
    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6       #result:I
    goto :goto_1
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 5
    .parameter "text"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1460
    if-nez p1, :cond_0

    .line 1461
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1464
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 1477
    :cond_1
    :goto_0
    return v1

    .line 1467
    :cond_2
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_3

    .line 1468
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    goto :goto_0

    .line 1471
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1472
    .local v0, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1473
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, p3

    invoke-direct {p0, p1, p2, v3, p4}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 1475
    .local v1, res:I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1476
    if-eqz p4, :cond_1

    aget v3, p4, v2

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v2

    goto :goto_0
.end method

.method public breakText([CIIF[F)I
    .locals 9
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v8, 0x0

    .line 1367
    if-nez p1, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1371
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1374
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_5

    :cond_3
    move v7, v8

    .line 1387
    :cond_4
    :goto_0
    return v7

    .line 1377
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 1378
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    goto :goto_0

    .line 1381
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    .line 1382
    .local v6, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1383
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v4, p4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Paint;->native_breakText([CIIF[F)I

    move-result v7

    .line 1385
    .local v7, res:I
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1386
    if-eqz p5, :cond_4

    aget v0, p5, v8

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p5, v8

    goto :goto_0
.end method

.method public clearShadowLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1032
    iput-boolean v1, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1033
    invoke-direct {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1034
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2123
    :try_start_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2127
    return-void

    .line 2125
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 812
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_getFillPath(III)Z

    move-result v0

    return v0
.end method

.method public native getFlags()I
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 1172
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1173
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1174
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1209
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1210
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public native getHinting()I
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .prologue
    .line 768
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeCap(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 2

    .prologue
    .line 787
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeJoin(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 2

    .prologue
    .line 642
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStyle(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .prologue
    .line 1045
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getTextAlign(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bounds"

    .prologue
    .line 2091
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2092
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2094
    :cond_0
    if-nez p4, :cond_1

    .line 2095
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2097
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetStringBounds(ILjava/lang/String;IILandroid/graphics/Rect;)V

    .line 2098
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 2
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "bounds"

    .prologue
    .line 2111
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2112
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2114
    :cond_1
    if-nez p4, :cond_2

    .line 2115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2117
    :cond_2
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(I[CIILandroid/graphics/Rect;)V

    .line 2118
    return-void
.end method

.method public getTextGlyphs(Ljava/lang/String;IIIII[C)I
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "glyphs"

    .prologue
    .line 1636
    if-nez p1, :cond_0

    .line 1637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    .line 1640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown flags value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    :cond_1
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 1645
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1647
    :cond_2
    sub-int v0, p3, p2

    array-length v1, p7

    if-le v0, v1, :cond_3

    .line 1648
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1650
    :cond_3
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextGlyphs(ILjava/lang/String;IIIII[C)I

    move-result v0

    return v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2073
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2074
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2076
    :cond_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(IILjava/lang/String;IIFFI)V

    .line 2078
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2051
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2052
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2054
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(II[CIIFFI)V

    .line 2056
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1726
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FII)F
    .locals 13
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1741
    if-nez p1, :cond_0

    .line 1742
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    sub-int v4, p2, p4

    or-int/2addr v2, v4

    sub-int v4, p5, p3

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p5

    or-int/2addr v4, v2

    if-nez p7, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v4

    if-gez v2, :cond_2

    .line 1749
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1744
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v6, p3, p2

    sub-int/2addr v2, v6

    goto :goto_0

    .line 1752
    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v3, p1

    .line 1753
    check-cast v3, Ljava/lang/String;

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    .line 1776
    :goto_1
    return v12

    .line 1756
    :cond_3
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_4

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_5

    .line 1758
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v12

    goto :goto_1

    .line 1761
    :cond_5
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 1762
    check-cast v2, Landroid/text/GraphicsOperations;

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object v10, p0

    invoke-interface/range {v2 .. v10}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F

    move-result v12

    goto :goto_1

    .line 1765
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v0, p3

    if-ne v0, p2, :cond_8

    .line 1766
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 1769
    :cond_8
    sub-int v7, p5, p4

    .line 1770
    .local v7, contextLen:I
    sub-int v5, p3, p2

    .line 1771
    .local v5, len:I
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1772
    .local v3, buf:[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1773
    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v12

    .line 1775
    .local v12, result:F
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FI)F
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1823
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FII)F
    .locals 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1873
    if-nez p1, :cond_0

    .line 1874
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1876
    :cond_0
    if-eqz p6, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_1

    .line 1877
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flags value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1879
    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_2

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 1884
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1879
    :cond_2
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 1887
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 1888
    :cond_4
    const/4 v2, 0x0

    .line 1907
    :goto_1
    return v2

    .line 1891
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 1892
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v2

    goto :goto_1

    .line 1896
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 1897
    .local v14, oldSize:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1898
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FII)F

    move-result v15

    .line 1900
    .local v15, totalAdvance:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1902
    if-eqz p7, :cond_7

    .line 1903
    move/from16 v13, p8

    .local v13, i:I
    sub-int v2, p3, p2

    add-int v12, v13, v2

    .local v12, e:I
    :goto_2
    if-ge v13, v12, :cond_7

    .line 1904
    aget v2, p7, v13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v13

    .line 1903
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1907
    .end local v12           #e:I
    .end local v13           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    goto :goto_1
.end method

.method public getTextRunAdvances([CIIIII[FI)F
    .locals 10
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1664
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances([CIIIII[FII)F
    .locals 15
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "reserved"

    .prologue
    .line 1679
    if-nez p1, :cond_0

    .line 1680
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1682
    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_1

    .line 1683
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1685
    :cond_1
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v2, v1

    if-nez p7, :cond_2

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v2

    if-gez v1, :cond_3

    .line 1691
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1685
    :cond_2
    move-object/from16 v0, p7

    array-length v1, v0

    add-int v3, p8, p3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1694
    :cond_3
    move-object/from16 v0, p1

    array-length v1, v0

    if-eqz v1, :cond_4

    if-nez p3, :cond_5

    .line 1695
    :cond_4
    const/4 v1, 0x0

    .line 1713
    :goto_1
    return v1

    .line 1697
    :cond_5
    iget-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_6

    .line 1698
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v1

    goto :goto_1

    .line 1702
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 1703
    .local v13, oldSize:F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1704
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FII)F

    move-result v14

    .line 1706
    .local v14, res:F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1708
    if-eqz p7, :cond_7

    .line 1709
    move/from16 v12, p8

    .local v12, i:I
    add-int v11, v12, p3

    .local v11, e:I
    :goto_2
    if-ge v12, v11, :cond_7

    .line 1710
    aget v1, p7, v12

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p7, v12

    .line 1709
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1713
    .end local v11           #e:I
    .end local v12           #i:I
    :cond_7
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v14

    goto :goto_1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    const/4 v2, 0x0

    .line 1979
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 1981
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v7

    .line 1994
    :goto_0
    return v7

    .line 1984
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1985
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v7

    goto :goto_0

    .line 1989
    :cond_2
    sub-int v3, p3, p2

    .line 1990
    .local v3, contextLen:I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1991
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1992
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1993
    .local v7, result:I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2025
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 2029
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2032
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(ILjava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 9
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextLength"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 1938
    add-int v8, p2, p3

    .line 1939
    .local v8, contextEnd:I
    or-int v0, p2, v8

    or-int/2addr v0, p5

    sub-int v1, v8, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v8, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v8

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 1943
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1946
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(I[CIIIII)I

    move-result v0

    return v0
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    const/4 v1, 0x0

    .line 1532
    if-nez p1, :cond_0

    .line 1533
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1535
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1536
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1538
    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    .line 1539
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1542
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    .line 1561
    .end local p1
    :cond_3
    :goto_0
    return v1

    .line 1545
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1546
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1548
    .restart local p1
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_7

    .line 1550
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1552
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    .line 1553
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_0

    .line 1557
    .restart local p1
    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1558
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1559
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1560
    .local v1, result:I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    .line 1575
    if-nez p1, :cond_0

    .line 1576
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1578
    :cond_0
    or-int v3, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p3

    or-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 1579
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1581
    :cond_1
    sub-int v3, p3, p2

    array-length v4, p4

    if-le v3, v4, :cond_2

    .line 1582
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1585
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne p2, p3, :cond_5

    .line 1586
    :cond_3
    const/4 v2, 0x0

    .line 1599
    :cond_4
    :goto_0
    return v2

    .line 1588
    :cond_5
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_6

    .line 1589
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    goto :goto_0

    .line 1592
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1593
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1594
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;II[F)I

    move-result v2

    .line 1595
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1597
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .parameter "text"
    .parameter "widths"

    .prologue
    .line 1611
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 5
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "widths"

    .prologue
    .line 1495
    if-nez p1, :cond_0

    .line 1496
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1498
    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_1

    array-length v3, p4

    if-le p3, v3, :cond_2

    .line 1500
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1503
    :cond_2
    array-length v3, p1

    if-eqz v3, :cond_3

    if-nez p3, :cond_5

    .line 1504
    :cond_3
    const/4 v2, 0x0

    .line 1517
    :cond_4
    :goto_0
    return v2

    .line 1506
    :cond_5
    iget-boolean v3, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v3, :cond_6

    .line 1507
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    goto :goto_0

    .line 1510
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 1511
    .local v1, oldSize:F
    iget v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1512
    iget v3, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Paint;->native_getTextWidths(I[CII[F)I

    move-result v2

    .line 1513
    .local v2, res:I
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1514
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1515
    aget v3, p4, v0

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v0

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final isAntiAlias()Z
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDither()Z
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLinearText()Z
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1322
    if-nez p1, :cond_0

    .line 1323
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1325
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1326
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1329
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1330
    :cond_2
    const/4 v1, 0x0

    .line 1347
    .end local p1
    :goto_0
    return v1

    .line 1332
    .restart local p1
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1333
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1335
    .restart local p1
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    .line 1337
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1339
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    .line 1340
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v1

    goto :goto_0

    .line 1343
    .restart local p1
    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1344
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1345
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1346
    .local v1, result:F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 4
    .parameter "text"

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1299
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1300
    const/4 v2, 0x0

    .line 1308
    :goto_0
    return v2

    .line 1303
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    .line 1304
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1305
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1306
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;)F

    move-result v1

    .line 1307
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1308
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1265
    if-nez p1, :cond_0

    .line 1266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1268
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1269
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1272
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1273
    :cond_2
    const/4 v2, 0x0

    .line 1283
    :goto_0
    return v2

    .line 1275
    :cond_3
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    .line 1276
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_0

    .line 1279
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1280
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1281
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;II)F

    move-result v1

    .line 1282
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1283
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public measureText([CII)F
    .locals 4
    .parameter "text"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1233
    if-nez p1, :cond_0

    .line 1234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1236
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 1237
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1240
    :cond_2
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 1241
    :cond_3
    const/4 v2, 0x0

    .line 1251
    :goto_0
    return v2

    .line 1243
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 1244
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v2

    goto :goto_0

    .line 1247
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1248
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1249
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/Paint;->native_measureText([CII)F

    move-result v1

    .line 1250
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1251
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    goto :goto_0
.end method

.method public native native_setColor(I)V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_reset(I)V

    .line 368
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 374
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 375
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 376
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 384
    if-eq p0, p1, :cond_0

    .line 386
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_set(II)V

    .line 387
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 389
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 718
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 445
    and-int/lit8 p1, p1, 0x7

    .line 446
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 450
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 676
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setColor_w(I)V

    .line 677
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, filterNative:I
    if-eqz p1, :cond_0

    .line 860
    iget v0, p1, Landroid/graphics/ColorFilter;->native_instance:I

    .line 861
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setColorFilter(II)I

    .line 862
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 863
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .parameter "factor"

    .prologue
    const/high16 v4, 0x3f80

    .line 419
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 421
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 427
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 424
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 425
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public native setDither(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public native setHinting(I)V
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 2
    .parameter "maskfilter"

    .prologue
    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, maskfilterNative:I
    if-eqz p1, :cond_0

    .line 943
    iget v0, p1, Landroid/graphics/MaskFilter;->native_instance:I

    .line 945
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setMaskFilter(II)I

    .line 946
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 947
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 2
    .parameter "effect"

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, effectNative:I
    if-eqz p1, :cond_0

    .line 914
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    .line 916
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setPathEffect(II)I

    .line 917
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 918
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 2
    .parameter "rasterizer"

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, rasterizerNative:I
    if-eqz p1, :cond_0

    .line 1005
    iget v0, p1, Landroid/graphics/Rasterizer;->native_instance:I

    .line 1007
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setRasterizer(II)I

    .line 1008
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 1009
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2
    .parameter "shader"

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, shaderNative:I
    if-eqz p1, :cond_0

    .line 836
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    .line 837
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setShader(II)I

    .line 838
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 839
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1018
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1019
    iput p1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 1020
    iput p2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 1021
    iput p3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 1022
    iput p4, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 1023
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1024
    return-void

    .line 1018
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2
    .parameter "cap"

    .prologue
    .line 778
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeCap(II)V

    .line 779
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 2
    .parameter "join"

    .prologue
    .line 797
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeJoin(II)V

    .line 798
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 653
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStyle(II)V

    .line 654
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 2
    .parameter "align"

    .prologue
    .line 1057
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextAlign(II)V

    .line 1058
    return-void
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "typeface"

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, typefaceNative:I
    if-eqz p1, :cond_0

    .line 974
    iget v0, p1, Landroid/graphics/Typeface;->native_instance:I

    .line 976
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 977
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 978
    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 2
    .parameter "xfermode"

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, xfermodeNative:I
    if-eqz p1, :cond_0

    .line 887
    iget v0, p1, Landroid/graphics/Xfermode;->native_instance:I

    .line 888
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setXfermode(II)I

    .line 889
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 890
    return-object p1
.end method
