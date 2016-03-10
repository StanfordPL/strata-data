  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label   
  clc                                #  2     0x5   1      OPC=clc           
  setae %cl                          #  3     0x6   3      OPC=setae_r8      
  shlb $0x1, %r13b                   #  4     0x9   3      OPC=shlb_r8_one   
  salq %cl, %rbx                     #  5     0xc   3      OPC=salq_r64_cl   
  roll $0x1, %r13d                   #  6     0xf   3      OPC=roll_r32_one  
  retq                               #  7     0x12  1      OPC=retq          
                                                                             
.size target, .-target
