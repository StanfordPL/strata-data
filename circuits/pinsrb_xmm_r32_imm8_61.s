  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  vmovd %ebx, %xmm2                   #  1     0    4      OPC=vmovd_xmm_r32  
  callq .move_128_064_xmm2_r8_r9      #  2     0x4  5      OPC=callq_label    
  callq .move_r8b_to_byte_13_of_ymm1  #  3     0x9  5      OPC=callq_label    
  retq                                #  4     0xe  1      OPC=retq           
                                                                              
.size target, .-target
