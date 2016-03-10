  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  xorb %al, %al          #  1     0    2      OPC=xorb_r8_r8   
  negw %ax               #  2     0x2  3      OPC=negw_r16     
  movb %ah, %bl          #  3     0x5  2      OPC=movb_r8_rh   
  callq .set_szp_for_bl  #  4     0x7  5      OPC=callq_label  
  retq                   #  5     0xc  1      OPC=retq         
                                                               
.size target, .-target
