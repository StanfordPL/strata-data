  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label    
  callq .move_128_256_xmm12_xmm13_ymm1  #  2     0x5   5      OPC=callq_label    
  callq .move_byte_3_of_ymm1_to_r8b     #  3     0xa   5      OPC=callq_label    
  callq .move_r8b_to_byte_6_of_ymm1     #  4     0xf   5      OPC=callq_label    
  movsd %xmm2, %xmm1                    #  5     0x14  4      OPC=movsd_xmm_xmm  
  retq                                  #  6     0x18  1      OPC=retq           
                                                                                 
.size target, .-target
