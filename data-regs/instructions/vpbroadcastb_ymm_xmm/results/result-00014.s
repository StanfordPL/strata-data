  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm10          #  1     0     5      OPC=vpbroadcastb_xmm_xmm  
  vpbroadcastq %xmm10, %ymm1          #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_byte_30_of_ymm1_to_r9b  #  3     0xa   5      OPC=callq_label           
  callq .move_r9b_to_byte_28_of_ymm1  #  4     0xf   5      OPC=callq_label           
  retq                                #  5     0x14  1      OPC=retq                  
                                                                                      
.size target, .-target
