  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setae %al       #  1     0    3      OPC=setae_r8     
  cbtw            #  2     0x3  2      OPC=cbtw         
  xaddb %ah, %al  #  3     0x5  3      OPC=xaddb_r8_rh  
  retq            #  4     0x8  1      OPC=retq         
                                                        
.size target, .-target
