  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode             
.target:                                          #        0    0      OPC=<label>        
  xorl %ebx, %ebx                                 #  1     0    2      OPC=xorl_r32_r32   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x2  5      OPC=callq_label    
  vmovd %xmm9, %edx                               #  3     0x7  4      OPC=vmovd_r32_xmm  
  addl %edx, %ebx                                 #  4     0xb  2      OPC=addl_r32_r32   
  retq                                            #  5     0xd  1      OPC=retq           
                                                                                          
.size target, .-target
