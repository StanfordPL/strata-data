  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm3, %ymm9         #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vmovq %r11, %xmm13                #  3     0xa   5      OPC=vmovq_xmm_r64          
  vandps %xmm2, %xmm2, %xmm6        #  4     0xf   4      OPC=vandps_xmm_xmm_xmm     
  vunpcklps %xmm13, %xmm6, %xmm11   #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm  
  vmulsd %xmm11, %xmm9, %xmm8       #  6     0x18  5      OPC=vmulsd_xmm_xmm_xmm     
  vmovsd %xmm11, %xmm8, %xmm1       #  7     0x1d  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                              #  8     0x22  1      OPC=retq                   
                                                                                     
.size target, .-target
