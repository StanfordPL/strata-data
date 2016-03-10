  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label    
  vmovq %r8, %xmm1                    #  2     0x5   5      OPC=vmovq_xmm_r64  
  callq .move_byte_29_of_ymm1_to_r9b  #  3     0xa   5      OPC=callq_label    
  callq .move_r9b_to_byte_8_of_ymm1   #  4     0xf   5      OPC=callq_label    
  retq                                #  5     0x14  1      OPC=retq           
                                                                               
.size target, .-target
