  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  xorb %al, %al    #  1     0     2      OPC=xorb_r8_r8      
  setnge %bl       #  2     0x2   3      OPC=setnge_r8       
  cmovsw %ax, %bx  #  3     0x5   4      OPC=cmovsw_r16_r16  
  orw %bx, %ax     #  4     0x9   3      OPC=orw_r16_r16     
  orb %bl, %ah     #  5     0xc   2      OPC=orb_rh_r8       
  movb %ah, %ah    #  6     0xe   2      OPC=movb_rh_rh      
  retq             #  7     0x10  1      OPC=retq            
                                                             
.size target, .-target
