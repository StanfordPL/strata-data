  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  vmovq %rbx, %xmm1               #  1     0     5      OPC=vmovq_xmm_r64  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5   5      OPC=callq_label    
  subq %r8, %r9                   #  3     0xa   3      OPC=subq_r64_r64   
  notq %rbx                       #  4     0xd   3      OPC=notq_r64       
  incq %rbx                       #  5     0x10  3      OPC=incq_r64       
  retq                            #  6     0x13  1      OPC=retq           
                                                                           
.size target, .-target
