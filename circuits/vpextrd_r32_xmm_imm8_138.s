  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode            
.target:                                          #        0    0      OPC=<label>       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label   
  movd %xmm10, %esi                               #  2     0x5  5      OPC=movd_r32_xmm  
  movl %esi, %ebx                                 #  3     0xa  2      OPC=movl_r32_r32  
  retq                                            #  4     0xc  1      OPC=retq          
                                                                                         
.size target, .-target
