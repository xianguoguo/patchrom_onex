.class final Landroid/app/ActivityThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3563
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3565
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 3566
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->gcSoftReferences(Z)V

    .line 3569
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeFileMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3570
    invoke-static {}, Landroid/os/Process;->releaseFileMapMemory()V

    .line 3574
    :cond_0
    return-void
.end method
