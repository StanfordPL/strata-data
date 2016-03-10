  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label  
  salb $0x1, %bl           #  2     0x5  2      OPC=salb_r8_one  
  orq %rbx, %rbx           #  3     0x7  3      OPC=orq_r64_r64  
  setpo %ah                #  4     0xa  3      OPC=setpo_rh     
  retq                     #  5     0xd  1      OPC=retq         
                                                                 
.size target, .-target
