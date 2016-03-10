  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xchgw %ax, %bx  #  1     0    2      OPC=xchgw_r16_ax  
  cwtl            #  2     0x2  1      OPC=cwtl          
  cwtl            #  3     0x3  1      OPC=cwtl          
  cwtl            #  4     0x4  1      OPC=cwtl          
  movb %bl, %bl   #  5     0x5  2      OPC=movb_r8_r8    
  retq            #  6     0x7  1      OPC=retq          
                                                         
.size target, .-target
