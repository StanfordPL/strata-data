  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                
.target:                           #        0     0      OPC=<label>           
  cmovnll %ecx, %ebx               #  1     0     3      OPC=cmovnll_r32_r32   
  callq .move_032_016_ebx_r8w_r9w  #  2     0x3   5      OPC=callq_label       
  movzbw %r9b, %dx                 #  3     0x8   5      OPC=movzbw_r16_r8     
  salb $0x1, %dh                   #  4     0xd   2      OPC=salb_rh_one       
  cmovnbel %ecx, %ebx              #  5     0xf   3      OPC=cmovnbel_r32_r32  
  retq                             #  6     0x12  1      OPC=retq              
                                                                               
.size target, .-target
