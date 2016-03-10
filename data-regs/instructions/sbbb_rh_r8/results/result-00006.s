  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  cmc             #  1     0    1      OPC=cmc          
  xchgb %ah, %bl  #  2     0x1  2      OPC=xchgb_r8_rh  
  notb %ah        #  3     0x3  2      OPC=notb_rh      
  adcb %bl, %ah   #  4     0x5  2      OPC=adcb_rh_r8   
  cmc             #  5     0x7  1      OPC=cmc          
  retq            #  6     0x8  1      OPC=retq         
                                                        
.size target, .-target
