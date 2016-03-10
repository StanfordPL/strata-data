  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovnaew %cx, %bx  #  1     0    4      OPC=cmovnaew_r16_r16  
  xorl %edx, %edx    #  2     0x4  2      OPC=xorl_r32_r32      
  xaddb %dl, %bh     #  3     0x6  3      OPC=xaddb_rh_r8       
  retq               #  4     0x9  1      OPC=retq              
                                                                
.size target, .-target
