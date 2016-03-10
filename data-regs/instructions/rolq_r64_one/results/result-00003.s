  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_064_032_rbx_r12d_r13d  #  1     0    5      OPC=callq_label   
  clc                                #  2     0x5  1      OPC=clc           
  adcl %r13d, %r13d                  #  3     0x6  3      OPC=adcl_r32_r32  
  adcq %rbx, %rbx                    #  4     0x9  3      OPC=adcq_r64_r64  
  retq                               #  5     0xc  1      OPC=retq          
                                                                            
.size target, .-target
