  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movaps %xmm1, %xmm4                  #  2     0x5   3      OPC=movaps_xmm_xmm          
  vbroadcastss %xmm2, %ymm8            #  3     0x8   5      OPC=vbroadcastss_ymm_xmm    
  vunpcklps %xmm11, %xmm4, %xmm9       #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm9, %xmm12      #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vorpd %xmm8, %xmm8, %xmm13           #  6     0x16  5      OPC=vorpd_xmm_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1b  5      OPC=callq_label             
  retq                                 #  8     0x20  1      OPC=retq                    
                                                                                         
.size target, .-target
