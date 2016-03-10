  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32    
  xaddb %ah, %bl    #  2     0x2  3      OPC=xaddb_r8_rh     
  xchgb %ah, %al    #  3     0x5  2      OPC=xchgb_r8_rh     
  shlb $0x1, %al    #  4     0x7  2      OPC=shlb_r8_one     
  movswl %ax, %ebx  #  5     0x9  3      OPC=movswl_r32_r16  
  retq              #  6     0xc  1      OPC=retq            
                                                             
.size target, .-target
