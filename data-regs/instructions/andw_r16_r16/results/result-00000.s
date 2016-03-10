  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  andb %bh, %ch          #  1     0    2      OPC=andb_rh_rh     
  andb %bl, %cl          #  2     0x2  2      OPC=andb_r8_r8     
  xchgw %bx, %cx         #  3     0x4  3      OPC=xchgw_r16_r16  
  callq .set_szp_for_bx  #  4     0x7  5      OPC=callq_label    
  retq                   #  5     0xc  1      OPC=retq           
                                                                 
.size target, .-target
