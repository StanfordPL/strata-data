  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  testb %bh, %bh  #  1     0    2      OPC=testb_rh_rh  
  setz %al        #  2     0x2  3      OPC=setz_r8      
  xchgb %bh, %al  #  3     0x5  2      OPC=xchgb_r8_rh  
  andb %ah, %al   #  4     0x7  2      OPC=andb_r8_rh   
  xchgb %ah, %al  #  5     0x9  2      OPC=xchgb_r8_rh  
  retq            #  6     0xb  1      OPC=retq         
                                                        
.size target, .-target
