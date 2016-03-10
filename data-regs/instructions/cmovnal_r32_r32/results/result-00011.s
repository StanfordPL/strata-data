  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  cmovnbel %ebx, %ecx                #  1     0     3      OPC=cmovnbel_r32_r32  
  setne %r8b                         #  2     0x3   4      OPC=setne_r8          
  callq .move_r8b_to_byte_5_of_rbx   #  3     0x7   5      OPC=callq_label       
  callq .move_032_016_ecx_r12w_r13w  #  4     0xc   5      OPC=callq_label       
  callq .move_016_032_r12w_r13w_ebx  #  5     0x11  5      OPC=callq_label       
  retq                               #  6     0x16  1      OPC=retq              
                                                                                 
.size target, .-target
