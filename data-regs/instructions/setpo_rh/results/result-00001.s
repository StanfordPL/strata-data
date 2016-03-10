  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  setnp %r9b        #  1     0    4      OPC=setnp_r8     
  xaddb %r9b, %r9b  #  2     0x4  4      OPC=xaddb_r8_r8  
  setnp %ah         #  3     0x8  3      OPC=setnp_rh     
  retq              #  4     0xb  1      OPC=retq         
                                                          
.size target, .-target
