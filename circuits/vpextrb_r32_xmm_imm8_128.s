  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r12_r13  #  1     0    5      OPC=callq_label    
  movsbl %r12b, %r8d                #  2     0x5  4      OPC=movsbl_r32_r8  
  movzbq %r8b, %rbx                 #  3     0x9  4      OPC=movzbq_r64_r8  
  retq                              #  4     0xd  1      OPC=retq           
                                                                            
.size target, .-target
