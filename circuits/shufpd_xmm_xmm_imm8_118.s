  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovups %xmm2, %xmm6                 #  2     0x5   4      OPC=vmovups_xmm_xmm        
  vunpckhpd %ymm6, %ymm6, %ymm13       #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label            
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
