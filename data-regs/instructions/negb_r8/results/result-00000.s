  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  movsbq %bl, %r11       #  1     0     4      OPC=movsbq_r64_r8    
  negw %r11w             #  2     0x4   4      OPC=negw_r16         
  cmovnzl %r11d, %ebx    #  3     0x8   4      OPC=cmovnzl_r32_r32  
  decb %r11b             #  4     0xc   3      OPC=decb_r8          
  callq .set_szp_for_bl  #  5     0xf   5      OPC=callq_label      
  retq                   #  6     0x14  1      OPC=retq             
                                                                    
.size target, .-target
