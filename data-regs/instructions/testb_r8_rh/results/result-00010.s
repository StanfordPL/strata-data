  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP  Bytes  Opcode             
.target:                           #        0    0      OPC=<label>        
  movsbl %ah, %edx                 #  1     0    3      OPC=movsbl_r32_rh  
  callq .move_064_032_rdx_r8d_r9d  #  2     0x3  5      OPC=callq_label    
  testb %r8b, %bl                  #  3     0x8  3      OPC=testb_r8_r8    
  retq                             #  4     0xb  1      OPC=retq           
                                                                           
.size target, .-target
