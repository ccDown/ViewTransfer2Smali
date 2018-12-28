.class public final Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;
.super Ljava/lang/Object;
.source "DefaultImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final RIFF_HEADER:I = 0x52494646

.field private static final SEGMENT_SOS:I = 0xda

.field static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "DfltImageHeaderParser"

.field private static final VP8_HEADER:I = 0x56503800

.field private static final VP8_HEADER_MASK:I = -0x100

.field private static final VP8_HEADER_TYPE_EXTENDED:I = 0x58

.field private static final VP8_HEADER_TYPE_LOSSLESS:I = 0x4c

.field private static final VP8_HEADER_TYPE_MASK:I = 0xff

.field private static final WEBP_EXTENDED_ALPHA_FLAG:I = 0x10

.field private static final WEBP_HEADER:I = 0x57454250

.field private static final WEBP_LOSSLESS_ALPHA_FLAG:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    .line 37
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->BYTES_PER_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2
    .param p0, "ifdOffset"    # I
    .param p1, "tagIndex"    # I

    .line 341
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 5
    .param p1, "reader"    # Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    .line 152
    .local v0, "magicNumber":I
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->handles(I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 153
    const-string v1, "DfltImageHeaderParser"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "DfltImageHeaderParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parser doesn\'t handle magic number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return v3

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->moveToExifSegmentAndGetLength(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)I

    move-result v1

    .line 159
    .local v1, "exifSegmentLength":I
    if-ne v1, v3, :cond_3

    .line 160
    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const-string v2, "DfltImageHeaderParser"

    const-string v4, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    return v3

    .line 166
    :cond_3
    const-class v2, [B

    invoke-interface {p2, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 168
    .local v2, "exifData":[B
    :try_start_0
    invoke-direct {p0, p1, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 168
    return v3

    .line 170
    :catchall_0
    move-exception v3

    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    throw v3
.end method

.method private getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 8
    .param p1, "reader"    # Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    .line 91
    .local v0, "firstTwoBytes":I
    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 92
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v1

    .line 95
    :cond_0
    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 97
    .local v1, "firstFourBytes":I
    const v3, -0x76afb1b9

    if-ne v1, v3, :cond_2

    .line 100
    const-wide/16 v2, 0x15

    invoke-interface {p1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 101
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getByte()I

    move-result v2

    .line 103
    .local v2, "alpha":I
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_0
    return-object v3

    .line 107
    .end local v2    # "alpha":I
    :cond_2
    shr-int/lit8 v3, v1, 0x8

    const v5, 0x474946

    if-ne v3, v5, :cond_3

    .line 108
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v2

    .line 113
    :cond_3
    const v3, 0x52494646

    if-eq v1, v3, :cond_4

    .line 114
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v2

    .line 117
    :cond_4
    const-wide/16 v5, 0x4

    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 118
    nop

    .line 119
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v3, v2

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v7

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    .line 120
    .local v3, "thirdFourBytes":I
    const v7, 0x57454250

    if-eq v3, v7, :cond_5

    .line 121
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v2

    .line 123
    :cond_5
    nop

    .line 124
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v2, v7

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v7

    and-int/2addr v4, v7

    or-int/2addr v2, v4

    .line 125
    .local v2, "fourthFourBytes":I
    and-int/lit16 v4, v2, -0x100

    const v7, 0x56503800

    if-eq v4, v7, :cond_6

    .line 126
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v4

    .line 128
    :cond_6
    and-int/lit16 v4, v2, 0xff

    const/16 v7, 0x58

    if-ne v4, v7, :cond_8

    .line 130
    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 131
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_1
    return-object v4

    .line 133
    :cond_8
    and-int/lit16 v4, v2, 0xff

    const/16 v7, 0x4c

    if-ne v4, v7, :cond_a

    .line 136
    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 137
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getByte()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2
    return-object v4

    .line 139
    :cond_a
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v4
.end method

.method private static handles(I)Z
    .locals 2
    .param p0, "imageMagicNumber"    # I

    .line 345
    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasJpegExifPreamble([BI)Z
    .locals 4
    .param p1, "exifData"    # [B
    .param p2, "exifSegmentLength"    # I

    .line 199
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v1, v1

    if-le p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 202
    nop

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 203
    aget-byte v2, p1, v0

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 205
    goto :goto_2

    .line 202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return v1
.end method

.method private moveToExifSegmentAndGetLength(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)I
    .locals 10
    .param p1, "reader"    # Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v0

    .line 219
    .local v0, "segmentId":S
    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 220
    const-string v1, "DfltImageHeaderParser"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "DfltImageHeaderParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown segmentId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return v3

    .line 226
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v1

    .line 227
    .local v1, "segmentType":S
    const/16 v4, 0xda

    if-ne v1, v4, :cond_2

    .line 228
    return v3

    .line 229
    :cond_2
    const/16 v4, 0xd9

    if-ne v1, v4, :cond_4

    .line 230
    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    const-string v2, "DfltImageHeaderParser"

    const-string v4, "Found MARKER_EOI in exif segment"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    return v3

    .line 237
    :cond_4
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 238
    .local v4, "segmentLength":I
    const/16 v5, 0xe1

    if-eq v1, v5, :cond_7

    .line 239
    int-to-long v5, v4

    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    move-result-wide v5

    .line 240
    .local v5, "skipped":J
    int-to-long v7, v4

    cmp-long v9, v5, v7

    if-eqz v9, :cond_6

    .line 241
    const-string v7, "DfltImageHeaderParser"

    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    const-string v2, "DfltImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to skip enough data, type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", wanted to skip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", but actually skipped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_5
    return v3

    .line 249
    .end local v5    # "skipped":J
    :cond_6
    nop

    .line 252
    .end local v0    # "segmentId":S
    .end local v1    # "segmentType":S
    .end local v4    # "segmentLength":I
    goto/16 :goto_0

    .line 250
    .restart local v0    # "segmentId":S
    .restart local v1    # "segmentType":S
    .restart local v4    # "segmentLength":I
    :cond_7
    return v4
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;)I
    .locals 16
    .param p0, "segmentData"    # Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;

    .line 256
    move-object/from16 v0, p0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    .local v1, "headerOffsetSize":I
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 260
    .local v2, "byteOrderIdentifier":S
    const/16 v3, 0x4949

    const/4 v4, 0x3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4d4d

    if-eq v2, v3, :cond_1

    .line 268
    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    const-string v3, "DfltImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown endianness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 262
    :cond_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 263
    .local v3, "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 265
    .end local v3    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_2
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 266
    .restart local v3    # "byteOrder":Ljava/nio/ByteOrder;
    nop

    .line 271
    :goto_0
    nop

    .line 275
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 277
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v5

    add-int/2addr v5, v1

    .line 278
    .local v5, "firstIfdOffset":I
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v6

    .line 279
    .local v6, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_f

    .line 280
    invoke-static {v5, v7}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->calcTagOffset(II)I

    move-result v8

    .line 282
    .local v8, "tagOffset":I
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v9

    .line 284
    .local v9, "tagType":I
    const/16 v10, 0x112

    if-eq v9, v10, :cond_4

    .line 285
    nop

    .line 279
    .end local v8    # "tagOffset":I
    .end local v9    # "tagType":I
    :cond_3
    :goto_2
    const/4 v11, 0x3

    goto/16 :goto_6

    .line 288
    .restart local v8    # "tagOffset":I
    .restart local v9    # "tagType":I
    :cond_4
    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v0, v10}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v10

    .line 290
    .local v10, "formatCode":I
    const/4 v11, 0x1

    if-lt v10, v11, :cond_d

    const/16 v11, 0xc

    if-le v10, v11, :cond_5

    goto/16 :goto_5

    .line 297
    :cond_5
    add-int/lit8 v11, v8, 0x4

    invoke-virtual {v0, v11}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v11

    .line 298
    .local v11, "componentCount":I
    if-gez v11, :cond_6

    .line 299
    const-string v12, "DfltImageHeaderParser"

    invoke-static {v12, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 300
    const-string v12, "DfltImageHeaderParser"

    const-string v13, "Negative tiff component count"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 305
    :cond_6
    const-string v12, "DfltImageHeaderParser"

    invoke-static {v12, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 306
    const-string v12, "DfltImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got tagIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " componentCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    sget-object v12, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v12, v12, v10

    add-int/2addr v12, v11

    .line 311
    .local v12, "byteCount":I
    const/4 v13, 0x4

    if-le v12, v13, :cond_8

    .line 312
    const-string v13, "DfltImageHeaderParser"

    invoke-static {v13, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 313
    const-string v13, "DfltImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 318
    :cond_8
    add-int/lit8 v13, v8, 0x8

    .line 319
    .local v13, "tagValueOffset":I
    if-ltz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->length()I

    move-result v14

    if-le v13, v14, :cond_9

    goto :goto_4

    .line 326
    :cond_9
    if-ltz v12, :cond_b

    add-int v14, v13, v12

    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->length()I

    move-result v15

    if-le v14, v15, :cond_a

    goto :goto_3

    .line 334
    :cond_a
    invoke-virtual {v0, v13}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v4

    return v4

    .line 327
    :cond_b
    :goto_3
    const-string v14, "DfltImageHeaderParser"

    invoke-static {v14, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 328
    const-string v14, "DfltImageHeaderParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    :cond_c
    :goto_4
    const-string v4, "DfltImageHeaderParser"

    const/4 v14, 0x3

    invoke-static {v4, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    const-string v4, "DfltImageHeaderParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Illegal tagValueOffset="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " tagType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 291
    .end local v11    # "componentCount":I
    .end local v12    # "byteCount":I
    .end local v13    # "tagValueOffset":I
    :cond_d
    :goto_5
    const-string v4, "DfltImageHeaderParser"

    const/4 v11, 0x3

    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 292
    const-string v4, "DfltImageHeaderParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got invalid format code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v8    # "tagOffset":I
    .end local v9    # "tagType":I
    .end local v10    # "formatCode":I
    :cond_e
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x3

    goto/16 :goto_1

    .line 337
    .end local v7    # "i":I
    :cond_f
    const/4 v4, -0x1

    return v4
.end method

.method private parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;[BI)I
    .locals 5
    .param p1, "reader"    # Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
    .param p2, "tempArray"    # [B
    .param p3, "exifSegmentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-interface {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->read([BI)I

    move-result v0

    .line 178
    .local v0, "read":I
    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eq v0, p3, :cond_1

    .line 179
    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "DfltImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read exif segment data, length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", actually read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return v1

    .line 187
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->hasJpegExifPreamble([BI)Z

    move-result v3

    .line 188
    .local v3, "hasJpegExifPreamble":Z
    if-eqz v3, :cond_2

    .line 189
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;

    invoke-direct {v1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;-><init>([BI)V

    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;)I

    move-result v1

    return v1

    .line 191
    :cond_2
    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    const-string v2, "DfltImageHeaderParser"

    const-string v4, "Missing jpeg exif preamble"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    return v1
.end method


# virtual methods
.method public getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 83
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
