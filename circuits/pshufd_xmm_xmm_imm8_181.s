  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  movshdup %xmm2, %xmm13               #  1     0     5      OPC=movshdup_xmm_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vmovups %xmm13, %xmm12               #  3     0xa   5      OPC=vmovups_xmm_xmm        
  vbroadcastss %xmm11, %ymm10          #  4     0xf   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %ymm10, %ymm12, %ymm13     #  5     0x14  5      OPC=vunpckhps_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x19  5      OPC=callq_label            
  retq                                 #  7     0x1e  1      OPC=retq                   
                                                                                        
.size target, .-target
