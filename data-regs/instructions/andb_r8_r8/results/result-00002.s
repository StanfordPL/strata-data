  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  xorl %eax, %eax  #  1     0     2      OPC=xorl_r32_r32    
  cmovew %ax, %ax  #  2     0x2   4      OPC=cmovew_r16_r16  
  sbbb %ah, %ah    #  3     0x6   2      OPC=sbbb_rh_rh      
  seto %dh         #  4     0x8   3      OPC=seto_rh         
  xaddb %dh, %cl   #  5     0xb   3      OPC=xaddb_r8_rh     
  andb %dh, %bl    #  6     0xe   2      OPC=andb_r8_rh      
  retq             #  7     0x10  1      OPC=retq            
                                                             
.size target, .-target
