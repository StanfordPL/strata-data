  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
.target:                 #        0     0      OPC=<label>       
  xorw %dx, %dx          #  1     0     3      OPC=xorw_r16_r16  
  setc %bh               #  2     0x3   3      OPC=setc_rh       
  negw %bx               #  3     0x6   3      OPC=negw_r16      
  addb %bl, %bh          #  4     0x9   2      OPC=addb_rh_r8    
  callq .set_szp_for_bl  #  5     0xb   5      OPC=callq_label   
  retq                   #  6     0x10  1      OPC=retq          
                                                                 
.size target, .-target
