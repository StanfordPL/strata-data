  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_064_xmm1_r8_r9                #  1     0     5      OPC=callq_label   
  decw %r8w                                     #  2     0x5   4      OPC=decw_r16      
  addq %r8, %r8                                 #  3     0x9   3      OPC=addq_r64_r64  
  callq .move_r8b_to_byte_1_of_ymm1             #  4     0xc   5      OPC=callq_label   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  5     0x11  5      OPC=callq_label   
  movd %xmm5, %ebx                              #  6     0x16  4      OPC=movd_r32_xmm  
  retq                                          #  7     0x1a  1      OPC=retq          
                                                                                        
.size target, .-target
