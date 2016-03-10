  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  callq .set_cf                             #  2     0x5   5      OPC=callq_label   
  adcl %edx, %r8d                           #  3     0xa   3      OPC=adcl_r32_r32  
  callq .move_r8b_to_byte_9_of_ymm1         #  4     0xd   5      OPC=callq_label   
  callq .move_128_064_xmm1_r8_r9            #  5     0x12  5      OPC=callq_label   
  movq %r8, %rbx                            #  6     0x17  3      OPC=movq_r64_r64  
  retq                                      #  7     0x1a  1      OPC=retq          
                                                                                    
.size target, .-target
