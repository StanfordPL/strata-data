  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vmovsldup %xmm2, %xmm13                       #  1     0     4      OPC=vmovsldup_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label           
  movss %xmm6, %xmm13                           #  3     0x9   5      OPC=movss_xmm_xmm         
  vbroadcastss %xmm7, %ymm9                     #  4     0xe   5      OPC=vbroadcastss_ymm_xmm  
  vmovq %xmm9, %xmm12                           #  5     0x13  5      OPC=vmovq_xmm_xmm         
  callq .move_64_128_xmm12_xmm13_xmm1           #  6     0x18  5      OPC=callq_label           
  retq                                          #  7     0x1d  1      OPC=retq                  
                                                                                                
.size target, .-target
