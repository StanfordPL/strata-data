  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  adcb %al, %al   #  2     0x2  2      OPC=adcb_r8_r8   
  notb %ah        #  3     0x4  2      OPC=notb_rh      
  setng %bl       #  4     0x6  3      OPC=setng_r8     
  xaddb %bl, %ah  #  5     0x9  3      OPC=xaddb_rh_r8  
  cmc             #  6     0xc  1      OPC=cmc          
  retq            #  7     0xd  1      OPC=retq         
                                                        
.size target, .-target
