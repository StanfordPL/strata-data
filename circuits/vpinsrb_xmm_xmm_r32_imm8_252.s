  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_016_008_bx_r8b_r9b      #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm2, %xmm1           #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  movaps %xmm2, %xmm1                 #  3     0xa   3      OPC=movaps_xmm_xmm        
  callq .move_r8b_to_byte_12_of_ymm1  #  4     0xd   5      OPC=callq_label           
  retq                                #  5     0x12  1      OPC=retq                  
                                                                                      
.size target, .-target
