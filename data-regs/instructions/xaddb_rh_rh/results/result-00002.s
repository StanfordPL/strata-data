  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  addb %ah, %bh   #  1     0    2      OPC=addb_rh_rh    
  seto %bl        #  2     0x2  3      OPC=seto_r8       
  setnb %al       #  3     0x5  3      OPC=setnb_r8      
  xchgw %ax, %bx  #  4     0x8  2      OPC=xchgw_r16_ax  
  retq            #  5     0xa  1      OPC=retq          
                                                         
.size target, .-target
