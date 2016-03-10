  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  xorl %eax, %eax   #  1     0     2      OPC=xorl_r32_r32   
  movzbl %ah, %edx  #  2     0x2   3      OPC=movzbl_r32_rh  
  xaddw %ax, %dx    #  3     0x5   4      OPC=xaddw_r16_r16  
  seto %ch          #  4     0x9   3      OPC=seto_rh        
  xaddb %ch, %bl    #  5     0xc   3      OPC=xaddb_r8_rh    
  sbbb %cl, %ch     #  6     0xf   2      OPC=sbbb_rh_r8     
  retq              #  7     0x11  1      OPC=retq           
                                                             
.size target, .-target
