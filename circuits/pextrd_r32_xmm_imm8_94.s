  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label    
  incq %r12                         #  2     0x5   3      OPC=incq_r64       
  callq .read_pf_into_rbx           #  3     0x8   5      OPC=callq_label    
  xchgl %r13d, %ebx                 #  4     0xd   3      OPC=xchgl_r32_r32  
  retq                              #  5     0x10  1      OPC=retq           
                                                                             
.size target, .-target
