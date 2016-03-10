  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bl, %edx  #  1     0    3      OPC=movzbl_r32_r8  
  xorl %eax, %eax   #  2     0x3  2      OPC=xorl_r32_r32   
  xaddw %ax, %dx    #  3     0x5  4      OPC=xaddw_r16_r16  
  xaddb %dl, %al    #  4     0x9  3      OPC=xaddb_r8_r8    
  xchgb %bl, %al    #  5     0xc  2      OPC=xchgb_r8_r8    
  retq              #  6     0xe  1      OPC=retq           
                                                            
.size target, .-target
