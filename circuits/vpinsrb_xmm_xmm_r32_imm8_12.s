  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label    
  vmovq %xmm2, %xmm2                  #  2     0x5   4      OPC=vmovq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9      #  3     0x9   5      OPC=callq_label    
  addl %ebx, %r9d                     #  4     0xe   3      OPC=addl_r32_r32   
  vzeroall                            #  5     0x11  3      OPC=vzeroall       
  callq .move_064_128_r10_r11_xmm1    #  6     0x14  5      OPC=callq_label    
  callq .move_r9b_to_byte_12_of_ymm1  #  7     0x19  5      OPC=callq_label    
  retq                                #  8     0x1e  1      OPC=retq           
                                                                               
.size target, .-target
