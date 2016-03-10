  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  cmovpol %ebx, %ecx                 #  1     0    3      OPC=cmovpol_r32_r32  
  xchgl %ecx, %ebx                   #  2     0x3  2      OPC=xchgl_r32_r32    
  callq .move_032_016_ebx_r12w_r13w  #  3     0x5  5      OPC=callq_label      
  callq .move_016_032_r12w_r13w_ebx  #  4     0xa  5      OPC=callq_label      
  retq                               #  5     0xf  1      OPC=retq             
                                                                               
.size target, .-target
