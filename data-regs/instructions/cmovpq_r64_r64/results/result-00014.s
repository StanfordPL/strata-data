  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movb %cl, %cl       #  1     0    2      OPC=movb_r8_r8       
  cmovpeq %rcx, %rbx  #  2     0x2  4      OPC=cmovpeq_r64_r64  
  retq                #  3     0x6  1      OPC=retq             
                                                                
.size target, .-target
