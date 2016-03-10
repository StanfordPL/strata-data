  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r12_r13  #  1     0    5      OPC=callq_label    
  blsrl %r13d, %ebx                 #  2     0x5  5      OPC=blsrl_r32_r32  
  xchgl %r13d, %ebx                 #  3     0xa  3      OPC=xchgl_r32_r32  
  retq                              #  4     0xd  1      OPC=retq           
                                                                            
.size target, .-target
