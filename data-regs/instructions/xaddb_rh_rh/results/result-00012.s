  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  xaddb %ah, %al  #  2     0x2  3      OPC=xaddb_r8_rh  
  xaddb %bh, %al  #  3     0x5  3      OPC=xaddb_r8_rh  
  movb %al, %ah   #  4     0x8  2      OPC=movb_rh_r8   
  retq            #  5     0xa  1      OPC=retq         
                                                        
.size target, .-target
