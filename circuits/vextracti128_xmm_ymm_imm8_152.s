  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label         
  callq .move_r9b_to_byte_23_of_ymm1  #  2     0x5   5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm3      #  3     0xa   5      OPC=callq_label         
  vmovsd %xmm1, %xmm3, %xmm1          #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
