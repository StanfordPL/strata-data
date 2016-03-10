  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorl %r11d, %r11d  #  1     0    3      OPC=xorl_r32_r32  
  setl %bh           #  2     0x3  3      OPC=setl_rh       
  addb %bh, %bh      #  3     0x6  2      OPC=addb_rh_rh    
  notw %bx           #  4     0x8  3      OPC=notw_r16      
  retq               #  5     0xb  1      OPC=retq          
                                                            
.size target, .-target
