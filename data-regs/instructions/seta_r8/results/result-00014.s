  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setnbe %bl      #  1     0    3      OPC=setnbe_r8    
  shlb $0x1, %bl  #  2     0x3  2      OPC=shlb_r8_one  
  setnz %bl       #  3     0x5  3      OPC=setnz_r8     
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
