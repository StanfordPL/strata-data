  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  callq .move_byte_7_of_ymm1_to_r8b   #  1     0     5      OPC=callq_label             
  callq .move_r8b_to_byte_13_of_ymm1  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm1, %xmm12     #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movdqa %xmm12, %xmm1                #  4     0xe   5      OPC=movdqa_xmm_xmm          
  retq                                #  5     0x13  1      OPC=retq                    
                                                                                        
.size target, .-target
