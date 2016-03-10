  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovlew %bx, %cx     #  1     0    4      OPC=cmovlew_r16_r16   
  cmovnleq %rcx, %rbx  #  2     0x4  4      OPC=cmovnleq_r64_r64  
  retq                 #  3     0x8  1      OPC=retq              
                                                                  
.size target, .-target
