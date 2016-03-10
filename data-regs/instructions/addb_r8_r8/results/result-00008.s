  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  movb %cl, %ch   #  1     0    2      OPC=movb_rh_r8   
  xaddb %ch, %bl  #  2     0x2  3      OPC=xaddb_r8_rh  
  retq            #  3     0x5  1      OPC=retq         
                                                        
.size target, .-target
