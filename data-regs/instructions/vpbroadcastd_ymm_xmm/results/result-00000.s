  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1             #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vmovups %xmm1, %xmm13                 #  2     0x5   4      OPC=vmovups_xmm_xmm       
  vmaxps %ymm1, %ymm13, %ymm12          #  3     0x9   4      OPC=vmaxps_ymm_ymm_ymm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xd   5      OPC=callq_label           
  retq                                  #  5     0x12  1      OPC=retq                  
                                                                                        
.size target, .-target
