  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwq %cx, %rdi   #  1     0    4      OPC=movzwq_r64_r16  
  setg %al           #  2     0x4  3      OPC=setg_r8         
  salb $0x1, %al     #  3     0x7  2      OPC=salb_r8_one     
  cmoveq %rdi, %rbx  #  4     0x9  4      OPC=cmoveq_r64_r64  
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
