  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovups %xmm3, %xmm13                 #  2     0x5   4      OPC=vmovups_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm2  #  3     0x9   5      OPC=callq_label         
  vminps %ymm2, %ymm2, %ymm1            #  4     0xe   4      OPC=vminps_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
