  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmaxpd %xmm2, %xmm2, %xmm13          #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm     
  vmovddup %ymm2, %ymm1                #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label            
  vunpcklpd %ymm1, %ymm13, %ymm3       #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm8_xmm9   #  5     0x11  5      OPC=callq_label            
  movsd %xmm8, %xmm1                   #  6     0x16  5      OPC=movsd_xmm_xmm          
  retq                                 #  7     0x1b  1      OPC=retq                   
                                                                                        
.size target, .-target
