  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label      
  xorl %edx, %edx          #  2     0x5   2      OPC=xorl_r32_r32     
  cmovnew %dx, %bx         #  3     0x7   4      OPC=cmovnew_r16_r16  
  negw %bx                 #  4     0xb   3      OPC=negw_r16         
  callq .read_sf_into_rbx  #  5     0xe   5      OPC=callq_label      
  retq                     #  6     0x13  1      OPC=retq             
                                                                      
.size target, .-target
