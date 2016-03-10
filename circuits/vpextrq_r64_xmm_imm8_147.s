  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0    5      OPC=callq_label    
  xorl %ebx, %ebx                 #  2     0x5  2      OPC=xorl_r32_r32   
  xaddq %rbx, %r9                 #  3     0x7  4      OPC=xaddq_r64_r64  
  retq                            #  4     0xb  1      OPC=retq           
                                                                          
.size target, .-target
