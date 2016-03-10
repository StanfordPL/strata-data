  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode             
.target:                                          #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label    
  xorl %ebx, %ebx                                 #  2     0x5  2      OPC=xorl_r32_r32   
  vmovd %xmm9, %ebp                               #  3     0x7  4      OPC=vmovd_r32_xmm  
  xaddl %ebp, %ebx                                #  4     0xb  3      OPC=xaddl_r32_r32  
  retq                                            #  5     0xe  1      OPC=retq           
                                                                                          
.size target, .-target
