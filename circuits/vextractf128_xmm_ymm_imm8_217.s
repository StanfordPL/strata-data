  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm9, %ymm8           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vmulps %ymm8, %ymm1, %ymm7          #  3     0xa   5      OPC=vmulps_ymm_ymm_ymm     
  sqrtpd %xmm7, %xmm1                 #  4     0xf   4      OPC=sqrtpd_xmm_xmm         
  vunpckhpd %xmm9, %xmm1, %xmm1       #  5     0x13  5      OPC=vunpckhpd_xmm_xmm_xmm  
  minsd %xmm8, %xmm1                  #  6     0x18  5      OPC=minsd_xmm_xmm          
  movsd %xmm9, %xmm1                  #  7     0x1d  5      OPC=movsd_xmm_xmm          
  retq                                #  8     0x22  1      OPC=retq                   
                                                                                       
.size target, .-target
