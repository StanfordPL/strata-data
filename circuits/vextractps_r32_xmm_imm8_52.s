  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r12_r13  #  1     0    5      OPC=callq_label    
  xorl %ebx, %ebx                   #  2     0x5  2      OPC=xorl_r32_r32   
  xchgl %ebx, %r12d                 #  3     0x7  3      OPC=xchgl_r32_r32  
  retq                              #  4     0xa  1      OPC=retq           
                                                                            
.size target, .-target
