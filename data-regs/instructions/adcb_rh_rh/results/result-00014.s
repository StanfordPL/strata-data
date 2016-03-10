  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  movb %bh, %al   #  1     0    2      OPC=movb_r8_rh    
  adcb %al, %ah   #  2     0x2  2      OPC=adcb_rh_r8    
  movb %bh, %al   #  3     0x4  2      OPC=movb_r8_rh    
  xchgw %ax, %ax  #  4     0x6  2      OPC=xchgw_r16_ax  
  retq            #  5     0x8  1      OPC=retq          
                                                         
.size target, .-target
