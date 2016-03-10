  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  setnge %dl                       #  1     0     3      OPC=setnge_r8       
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx  #  3     0x8   5      OPC=callq_label     
  salb $0x1, %dl                   #  4     0xd   2      OPC=salb_r8_one     
  cmoval %ecx, %ebx                #  5     0xf   3      OPC=cmoval_r32_r32  
  retq                             #  6     0x12  1      OPC=retq            
                                                                             
.size target, .-target
