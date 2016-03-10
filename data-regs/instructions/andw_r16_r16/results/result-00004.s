  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  andb %cl, %bl   #  1     0    2      OPC=andb_r8_r8     
  andb %ch, %bh   #  2     0x2  2      OPC=andb_rh_rh     
  testw %cx, %bx  #  3     0x4  3      OPC=testw_r16_r16  
  retq            #  4     0x7  1      OPC=retq           
                                                          
.size target, .-target
