  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  movzbl %bl, %ebx       #  1     0    3      OPC=movzbl_r32_r8  
  negw %bx               #  2     0x3  3      OPC=negw_r16       
  addb %bl, %bh          #  3     0x6  2      OPC=addb_rh_r8     
  callq .set_szp_for_bl  #  4     0x8  5      OPC=callq_label    
  retq                   #  5     0xd  1      OPC=retq           
                                                                 
.size target, .-target
