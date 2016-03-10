  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode             
.target:                                #        0    0      OPC=<label>        
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0    5      OPC=callq_label    
  callq .move_128_256_xmm10_xmm11_ymm1  #  2     0x5  5      OPC=callq_label    
  movsd %xmm3, %xmm1                    #  3     0xa  4      OPC=movsd_xmm_xmm  
  retq                                  #  4     0xe  1      OPC=retq           
                                                                                
.size target, .-target
