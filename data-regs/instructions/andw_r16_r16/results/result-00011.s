  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  andb %ch, %bh    #  1     0    2      OPC=andb_rh_rh     
  setnae %spl      #  2     0x2  4      OPC=setnae_r8      
  xaddb %spl, %cl  #  3     0x6  4      OPC=xaddb_r8_r8    
  andb %cl, %bl    #  4     0xa  2      OPC=andb_r8_r8     
  testw %bx, %bx   #  5     0xc  3      OPC=testw_r16_r16  
  retq             #  6     0xf  1      OPC=retq           
                                                           
.size target, .-target
