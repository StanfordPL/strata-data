  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode             
.target:                                #        0    0      OPC=<label>        
  movsd %xmm2, %xmm3                    #  1     0    4      OPC=movsd_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label    
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9  5      OPC=callq_label    
  retq                                  #  4     0xe  1      OPC=retq           
                                                                                
.size target, .-target
