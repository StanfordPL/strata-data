  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  tzcntl %ebx, %r14d                 #  1     0     5      OPC=tzcntl_r32_r32   
  movswq %bx, %r8                    #  2     0x5   4      OPC=movswq_r64_r16   
  cmovnal %r8d, %r8d                 #  3     0x9   4      OPC=cmovnal_r32_r32  
  callq .move_r8b_to_byte_4_of_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                               #  5     0x12  1      OPC=retq             
                                                                                
.size target, .-target
