.class Lcom/scalado/app/rewind/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static save(Lcom/scalado/base/Buffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v1

    new-array v0, v1, [B

    .line 25
    .local v0, bytes:[B
    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/scalado/base/Buffer;->get([BIII)V

    .line 26
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/FileUtils;->save([BLjava/lang/String;)V

    .line 27
    return-void
.end method

.method public static save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "bb"
    .parameter "filename"

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v0, v1, [B

    .line 18
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/FileUtils;->save([BLjava/lang/String;)V

    .line 21
    return-void
.end method

.method public static save([BLjava/lang/String;)V
    .locals 9
    .parameter "bytes"
    .parameter "filename"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 30
    const-string v4, "FileUtils"

    const-string v5, "Saving %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v4, "FileUtils"

    const-string v5, "Size = %d"

    new-array v6, v7, [Ljava/lang/Object;

    array-length v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 35
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    const-string v4, "FileUtils"

    const-string v5, "Done saving."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 44
    if-eqz v3, :cond_2

    .line 46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 53
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "FileUtils"

    const-string v5, "IOException!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v4, "FileUtils"

    const-string v5, "Ex:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    if-eqz v2, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    .line 48
    const-string v4, "FileUtils"

    const-string v5, "Exception when closing output stream!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v4, "FileUtils"

    const-string v5, "Ex:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 44
    :goto_2
    if-eqz v2, :cond_1

    .line 46
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 52
    :cond_1
    :goto_3
    throw v4

    .line 47
    :catch_2
    move-exception v1

    .line 48
    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v5, "FileUtils"

    const-string v6, "Exception when closing output stream!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v5, "FileUtils"

    const-string v6, "Ex:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 47
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 48
    .restart local v1       #ioe:Ljava/io/IOException;
    const-string v4, "FileUtils"

    const-string v5, "Exception when closing output stream!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v4, "FileUtils"

    const-string v5, "Ex:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #ioe:Ljava/io/IOException;
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 43
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 40
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
