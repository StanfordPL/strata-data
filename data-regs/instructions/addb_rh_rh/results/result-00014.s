  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movzbl %bh, %edx                 #  1     0     3      OPC=movzbl_r32_rh  
  callq .move_032_016_edx_r8w_r9w  #  2     0x3   5      OPC=callq_label    
  callq .move_016_032_r8w_r9w_edx  #  3     0x8   5      OPC=callq_label    
  xaddb %ah, %dl                   #  4     0xd   3      OPC=xaddb_r8_rh    
  xchgb %ah, %dl                   #  5     0x10  2      OPC=xchgb_r8_rh    
  retq                             #  6     0x12  1      OPC=retq           
                                                                            
.size target, .-target
