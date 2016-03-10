  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  movsbw %cl, %si        #  1     0    4      OPC=movsbw_r16_r8  
  andb %ch, %bh          #  2     0x4  2      OPC=andb_rh_rh     
  andb %sil, %bl         #  3     0x6  3      OPC=andb_r8_r8     
  callq .set_szp_for_bx  #  4     0x9  5      OPC=callq_label    
  retq                   #  5     0xe  1      OPC=retq           
                                                                 
.size target, .-target
