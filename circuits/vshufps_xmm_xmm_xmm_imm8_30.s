  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm13         #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vbroadcastss %xmm13, %xmm12        #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %ymm12, %ymm13, %ymm6    #  4     0xf   5      OPC=vunpckhps_ymm_ymm_ymm  
  vmovsd %xmm9, %xmm6, %xmm1         #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                               #  6     0x19  1      OPC=retq                   
                                                                                      
.size target, .-target
