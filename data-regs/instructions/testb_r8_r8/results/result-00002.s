  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %bl, %rdx                   #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x4   5      OPC=callq_label    
  movsbl %cl, %r13d                  #  3     0x9   4      OPC=movsbl_r32_r8  
  testl %r13d, %r10d                 #  4     0xd   3      OPC=testl_r32_r32  
  retq                               #  5     0x10  1      OPC=retq           
                                                                              
.size target, .-target
