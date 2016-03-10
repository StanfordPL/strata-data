  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %ah, %bl   #  1     0    2      OPC=xorb_r8_rh   
  setnae %ah      #  2     0x2  3      OPC=setnae_rh    
  xaddb %ah, %bl  #  3     0x5  3      OPC=xaddb_r8_rh  
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
