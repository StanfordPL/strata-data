  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  notb %bh        #  1     0    2      OPC=notb_rh      
  cmc             #  2     0x2  1      OPC=cmc          
  adcb %ah, %bh   #  3     0x3  2      OPC=adcb_rh_rh   
  xchgb %ah, %bh  #  4     0x5  2      OPC=xchgb_rh_rh  
  cmc             #  5     0x7  1      OPC=cmc          
  retq            #  6     0x8  1      OPC=retq         
                                                        
.size target, .-target
