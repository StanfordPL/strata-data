  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8    
  xchgw %ax, %ax  #  2     0x2  2      OPC=xchgw_ax_r16  
  shlb $0x1, %ah  #  3     0x4  2      OPC=shlb_rh_one   
  retq            #  4     0x6  1      OPC=retq          
                                                         
.size target, .-target
