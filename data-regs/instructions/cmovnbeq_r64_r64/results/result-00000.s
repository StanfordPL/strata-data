  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnaeq %rbx, %rcx  #  1     0    4      OPC=cmovnaeq_r64_r64  
  cmovneq %rcx, %rbx   #  2     0x4  4      OPC=cmovneq_r64_r64   
  retq                 #  3     0x8  1      OPC=retq              
                                                                  
.size target, .-target
