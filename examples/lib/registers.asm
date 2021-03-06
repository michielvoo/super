; PPU registers

.DEFINE INIDISP     $2100       ; w
.DEFINE OBSEL       $2101       ; w
.DEFINE OAMADD      $2102       ; w, 16-bit
.DEFINE OAMADDL     OAMADD      ; w
.DEFINE OAMADDH     $2103       ; w (sprite table select)
.DEFINE OAMDATA     $2104       ; w, 2x (also see OAMDATAREAD)
.DEFINE BGMODE      $2105       ; w
.DEFINE MOSAIC      $2106       ; w
.DEFINE BG1SC       $2107       ; w
.DEFINE BG2SC       $2108       ; w
.DEFINE BG3SC       $2109       ; w
.DEFINE BG4SC       $210A       ; w
.DEFINE BG12NBA     $210B       ; w
.DEFINE BG34NBA     $210C       ; w
.DEFINE BG1HOFS     $210D       ; w, 2x
.DEFINE M7HOFS      BG1HOFS     ; w, 2x
.DEFINE BG1VOFS     $210E       ; w, 2x
.DEFINE M7VOFS      BG1VOFS     ; w, 2x
.DEFINE BG2HOFS     $210F       ; w, 2x
.DEFINE BG2VOFS     $2110       ; w, 2x
.DEFINE BG3HOFS     $2111       ; w, 2x
.DEFINE BG3VOFS     $2112       ; w, 2x
.DEFINE BG4HOFS     $2113       ; w, 2x
.DEFINE BG4VOFS     $2114       ; w, 2x
.DEFINE VMAINC      $2115       ; w
.DEFINE VMADD       $2116       ; w, 16-bit
.DEFINE VMADDL      $2116       ; w
.DEFINE VMADDH      $2117       ; w
.DEFINE VMDATA      $2118       ; w, 16-bit (also see VMDATAREAD)
.DEFINE VMDATAL     VMDATA      ; w
.DEFINE VMDATAH     $2119       ; w
.DEFINE M7SEL       $211A       ; w
.DEFINE M7A         $211B       ; w, 2x
.DEFINE M7B         $211C       ; w, 2x
.DEFINE M7C         $211D       ; w, 2x
.DEFINE M7D         $211E       ; w, 2x
.DEFINE M7X         $211F       ; w, 2x
.DEFINE M7Y         $2120       ; w, 2x
.DEFINE CGADD       $2121       ; w
.DEFINE CGDATA      $2122       ; w, 2x (also see CGDATAREAD)
.DEFINE W12SEL      $2123       ; w
.DEFINE W34SEL      $2124       ; w
.DEFINE WOBJSEL     $2125       ; w
.DEFINE WH0         $2126       ; w
.DEFINE WIN1L       WH0         ; w
.DEFINE WH1         $2127       ; w
.DEFINE WIN1R       WH1         ; w
.DEFINE WH2         $2128       ; w
.DEFINE WIN2L       WH2         ; w
.DEFINE WH3         $2129       ; w
.DEFINE WIN2R       WH3         ; w
.DEFINE WBGLOG      $212A       ; w
.DEFINE WOBJLOG     $212B       ; w
.DEFINE TM          $212C       ; w
.DEFINE TS          $212D       ; w
.DEFINE TMW         $212E       ; w
.DEFINE TSW         $212F       ; w
.DEFINE CGWSEL      $2130       ; w
.DEFINE CGADSUB     $2131       ; w
.DEFINE COLDATA     $2132       ; w
.DEFINE SETINI      $2133       ; w
.DEFINE MPY         $2134       ; r, 24-bit
.DEFINE MPYL        MPY         ; r
.DEFINE MPYM        $2135       ; r
.DEFINE MPYH        $2136       ; r
.DEFINE SLHV        $2137       ; r
.DEFINE OAMDATAREAD $2138       ; r, 2x (also see OAMADD and OAMDATA)
.DEFINE VMDATAREAD  $2139       ; r, 16-bit (also see VMADD and VMDATA)
.DEFINE VMDATALREAD VMDATAREAD  ; r
.DEFINE VMDATAHREAD $213A       ; r
.DEFINE CGDATAREAD  $213B       ; r, 2x (also see CGADD and CGDATA)
.DEFINE OPHCT       $213C       ; r
.DEFINE OPVCT       $213D       ; r
.DEFINE STAT77      $213E       ; r
.DEFINE STAT78      $213F       ; r

; APU registers

.DEFINE APUI00      $2140 ; rw
.DEFINE APUI01      $2141 ; rw
.DEFINE APUI02      $2142 ; rw
.DEFINE APUI03      $2143 ; rw

; WRAM registers

.DEFINE WMDATA      $2180 ; rw
.DEFINE WMADD       $2181 ; w, 24-bit
.DEFINE WMADDL      WMADD ; w
.DEFINE WMADDH      $2182 ; w
.DEFINE WMADDB      $2183 ; w

; Serial joypad registers

.DEFINE JOYSER0     $4016 ; rw
.DEFINE JOYSER1     $4017 ; rw

; CPU registers

.DEFINE NMITIMEN    $4200 ; w
.DEFINE WRIO        $4201 ; w
.DEFINE WRMPYA      $4202 ; w
.DEFINE WRMPYB      $4203 ; w
.DEFINE WRDIV       $4204 ; w, 16-bit
.DEFINE WRDIVL      WRDIV ; w
.DEFINE WRDIVH      $4205 ; w
.DEFINE WRDIVB      $4206 ; w
.DEFINE HTIME       $4207 ; w, 16-bit
.DEFINE HTIMEL      HTIME ; w
.DEFINE HTIMEH      $4208 ; w
.DEFINE VTIME       $4209 ; w, 16-bit
.DEFINE VTIMEL      $4209 ; w
.DEFINE VTIMEH      $420A ; w
.DEFINE MDMAEN      $420B ; w
.DEFINE HDMAEN      $420C ; w
.DEFINE MEMSEL      $420D ; w
.DEFINE RDNMI       $4210 ; r
.DEFINE TIMEUP      $4211 ; r
.DEFINE HVBJOY      $4212 ; r
.DEFINE RDIO        $4213 ; r
.DEFINE RDDIV       $4214 ; r, 16-bit
.DEFINE RDDIVL      RDDIV ; r
.DEFINE RDDIVH      $4215 ; r
.DEFINE RDMPY       $4216 ; r, 16-bit
.DEFINE RDMPYL      RDMPY ; r
.DEFINE RDMPYH      $4217 ; r
.DEFINE JOY1        $4218 ; r, 16-bit
.DEFINE JOY1L       JOY1  ; r
.DEFINE JOY1H       $4219 ; r
.DEFINE JOY2        $421A ; r, 16-bit
.DEFINE JOY2L       JOY2  ; r
.DEFINE JOY2H       $421B ; r
.DEFINE JOY3        $421C ; r, 16-bit
.DEFINE JOY3L       JOY3  ; r
.DEFINE JOY3H       $421D ; r
.DEFINE JOY4        $421E ; r, 16-bit
.DEFINE JOY4L       JOY4  ; r
.DEFINE JOY4H       $421F ; r

; (H)DMA registers (channel 0)

.DEFINE DMAP0       $4300 ; w, DMA settings
.DEFINE BBAD0       $4301 ; w, B-bus address
.DEFINE A1T0        $4302 ; w, 16-bit, A-bus address
.DEFINE A1T0L       A1T0  ; w
.DEFINE A1T0H       $4303 ; w
.DEFINE A1B0        $4304 ; w, A-bus bank
.DEFINE DAS0        $4305 ; w, 16-bit, transfer size
.DEFINE DAS0L       DAS0  ; w
.DEFINE DAS0H       $4306 ; w
.DEFINE DASB0       $4307 ; w (HDMA)
.DEFINE A2A0        $4308 ; r, 16-bit
.DEFINE A2A0L       A2A0  ; r
.DEFINE A2A0H       $4309 ; r
.DEFINE NTRL0       $430A ; w (HDMA)

; (H)DMA registers (channel 1-7)

.DEFINE DMAP1 DMAP0 + $10
.DEFINE DMAP2 DMAP0 + $20
.DEFINE DMAP3 DMAP0 + $30
.DEFINE DMAP4 DMAP0 + $40
.DEFINE DMAP5 DMAP0 + $50
.DEFINE DMAP6 DMAP0 + $60
.DEFINE DMAP7 DMAP0 + $70

.DEFINE BBAD1 BBAD0 + $10
.DEFINE BBAD2 BBAD0 + $20
.DEFINE BBAD3 BBAD0 + $30
.DEFINE BBAD4 BBAD0 + $40
.DEFINE BBAD5 BBAD0 + $50
.DEFINE BBAD6 BBAD0 + $60
.DEFINE BBAD7 BBAD0 + $70

.DEFINE A1T1  A1T0  + $10
.DEFINE A1T2  A1T0  + $20
.DEFINE A1T3  A1T0  + $30
.DEFINE A1T4  A1T0  + $40
.DEFINE A1T5  A1T0  + $50
.DEFINE A1T6  A1T0  + $60
.DEFINE A1T7  A1T0  + $70

.DEFINE A1T1L A1T0L + $10
.DEFINE A1T2L A1T0L + $20
.DEFINE A1T3L A1T0L + $30
.DEFINE A1T4L A1T0L + $40
.DEFINE A1T5L A1T0L + $50
.DEFINE A1T6L A1T0L + $60
.DEFINE A1T7L A1T0L + $70

.DEFINE A1T1H A1T0H + $10
.DEFINE A1T2H A1T0H + $20
.DEFINE A1T3H A1T0H + $30
.DEFINE A1T4H A1T0H + $40
.DEFINE A1T5H A1T0H + $50
.DEFINE A1T6H A1T0H + $60
.DEFINE A1T7H A1T0H + $70

.DEFINE A1B1  A1B0  + $10
.DEFINE A1B2  A1B0  + $20
.DEFINE A1B3  A1B0  + $30
.DEFINE A1B4  A1B0  + $40
.DEFINE A1B5  A1B0  + $50
.DEFINE A1B6  A1B0  + $60
.DEFINE A1B7  A1B0  + $70

.DEFINE DAS1  DAS0  + $10
.DEFINE DAS2  DAS0  + $20
.DEFINE DAS3  DAS0  + $30
.DEFINE DAS4  DAS0  + $40
.DEFINE DAS5  DAS0  + $50
.DEFINE DAS6  DAS0  + $60
.DEFINE DAS7  DAS0  + $70

.DEFINE DAS1L DAS0L + $10
.DEFINE DAS2L DAS0L + $20
.DEFINE DAS3L DAS0L + $30
.DEFINE DAS4L DAS0L + $40
.DEFINE DAS5L DAS0L + $50
.DEFINE DAS6L DAS0L + $60
.DEFINE DAS7L DAS0L + $70

.DEFINE DAS1H DAS0H + $10
.DEFINE DAS2H DAS0H + $20
.DEFINE DAS3H DAS0H + $30
.DEFINE DAS4H DAS0H + $40
.DEFINE DAS5H DAS0H + $50
.DEFINE DAS6H DAS0H + $60
.DEFINE DAS7H DAS0H + $70

.DEFINE DASB1 DASB0 + $10
.DEFINE DASB2 DASB0 + $20
.DEFINE DASB3 DASB0 + $30
.DEFINE DASB4 DASB0 + $40
.DEFINE DASB5 DASB0 + $50
.DEFINE DASB6 DASB0 + $60
.DEFINE DASB7 DASB0 + $70

.DEFINE A2A1  A2A0  + $10
.DEFINE A2A2  A2A0  + $20
.DEFINE A2A3  A2A0  + $30
.DEFINE A2A4  A2A0  + $40
.DEFINE A2A5  A2A0  + $50
.DEFINE A2A6  A2A0  + $60
.DEFINE A2A7  A2A0  + $70

.DEFINE A2A1L A2A0L + $10
.DEFINE A2A2L A2A0L + $20
.DEFINE A2A3L A2A0L + $30
.DEFINE A2A4L A2A0L + $40
.DEFINE A2A5L A2A0L + $50
.DEFINE A2A6L A2A0L + $60
.DEFINE A2A7L A2A0L + $70

.DEFINE A2A1H A2A0H + $10
.DEFINE A2A2H A2A0H + $20
.DEFINE A2A3H A2A0H + $30
.DEFINE A2A4H A2A0H + $40
.DEFINE A2A5H A2A0H + $50
.DEFINE A2A6H A2A0H + $60
.DEFINE A2A7H A2A0H + $70

.DEFINE NTRL1 NTRL0 + $10
.DEFINE NTRL2 NTRL0 + $20
.DEFINE NTRL3 NTRL0 + $30
.DEFINE NTRL4 NTRL0 + $40
.DEFINE NTRL5 NTRL0 + $50
.DEFINE NTRL6 NTRL0 + $60
.DEFINE NTRL7 NTRL0 + $70
