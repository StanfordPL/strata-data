  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  cwtl            #  2     0x2  1      OPC=cwtl         
  orb %bl, %ah    #  3     0x3  2      OPC=orb_rh_r8    
  xchgb %bl, %ah  #  4     0x5  2      OPC=xchgb_rh_r8  
  retq            #  5     0x7  1      OPC=retq         
                                                        
.size target, .-target
