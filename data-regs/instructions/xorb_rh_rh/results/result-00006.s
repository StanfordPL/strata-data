  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xorw %cx, %cx   #  1     0    3      OPC=xorw_r16_r16  
  xaddb %bh, %cl  #  2     0x3  3      OPC=xaddb_r8_rh   
  xorb %cl, %ah   #  3     0x6  2      OPC=xorb_rh_r8    
  retq            #  4     0x8  1      OPC=retq          
                                                         
.size target, .-target
