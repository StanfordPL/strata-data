  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  movb %ah, %dl   #  1     0    2      OPC=movb_r8_rh   
  xchgb %dl, %bh  #  2     0x2  2      OPC=xchgb_rh_r8  
  xaddb %dl, %ah  #  3     0x4  3      OPC=xaddb_rh_r8  
  retq            #  4     0x7  1      OPC=retq         
                                                        
.size target, .-target
