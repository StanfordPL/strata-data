  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %dh, %dh   #  1     0    2      OPC=xorb_rh_rh   
  xchgb %dh, %bl  #  2     0x2  2      OPC=xchgb_r8_rh  
  andb %dh, %cl   #  3     0x4  2      OPC=andb_r8_rh   
  xchgb %cl, %bl  #  4     0x6  2      OPC=xchgb_r8_r8  
  retq            #  5     0x8  1      OPC=retq         
                                                        
.size target, .-target
