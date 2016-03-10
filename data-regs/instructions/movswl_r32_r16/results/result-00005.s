  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movswq %cx, %rcx                 #  1     0     4      OPC=movswq_r64_r16  
  callq .move_032_016_ecx_r8w_r9w  #  2     0x4   5      OPC=callq_label     
  movsbl %r9b, %ebx                #  3     0x9   4      OPC=movsbl_r32_r8   
  movw %r8w, %bx                   #  4     0xd   4      OPC=movw_r16_r16    
  retq                             #  5     0x11  1      OPC=retq            
                                                                             
.size target, .-target
