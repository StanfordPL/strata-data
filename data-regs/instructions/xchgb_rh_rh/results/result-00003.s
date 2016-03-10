  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorb %cl, %cl   #  1     0    2      OPC=xorb_r8_r8    
  setc %bl        #  2     0x2  3      OPC=setc_r8       
  setle %al       #  3     0x5  3      OPC=setle_r8      
  xchgw %ax, %bx  #  4     0x8  2      OPC=xchgw_r16_ax  
  retq            #  5     0xa  1      OPC=retq          
                                                         
.size target, .-target
