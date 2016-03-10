  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movsbq %cl, %r12    #  1     0    4      OPC=movsbq_r64_r8  
  movsbl %bl, %r14d   #  2     0x4  4      OPC=movsbl_r32_r8  
  testl %r12d, %r14d  #  3     0x8  3      OPC=testl_r32_r32  
  rclq $0x1, %r14     #  4     0xb  3      OPC=rclq_r64_one   
  retq                #  5     0xe  1      OPC=retq           
                                                              
.size target, .-target
