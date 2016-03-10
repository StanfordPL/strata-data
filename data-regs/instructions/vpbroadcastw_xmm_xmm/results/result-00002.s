  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1           #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  movq %xmm2, %r9                     #  2     0x5   5      OPC=movq_r64_xmm          
  callq .move_r9b_to_byte_10_of_ymm1  #  3     0xa   5      OPC=callq_label           
  callq .move_byte_1_of_ymm1_to_r9b   #  4     0xf   5      OPC=callq_label           
  callq .move_r9b_to_byte_11_of_ymm1  #  5     0x14  5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm8_xmm9   #  6     0x19  5      OPC=callq_label           
  vbroadcastss %xmm9, %xmm1           #  7     0x1e  5      OPC=vbroadcastss_xmm_xmm  
  retq                                #  8     0x23  1      OPC=retq                  
                                                                                      
.size target, .-target
