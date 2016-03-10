  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movzbl %ah, %ebp                 #  1     0     3      OPC=movzbl_r32_rh  
  xaddb %ah, %bl                   #  2     0x3   3      OPC=xaddb_r8_rh    
  callq .read_cf_into_rcx          #  3     0x6   5      OPC=callq_label    
  xchgw %cx, %bp                   #  4     0xb   3      OPC=xchgw_r16_r16  
  callq .move_064_032_rcx_r8d_r9d  #  5     0xe   5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rbx  #  6     0x13  5      OPC=callq_label    
  retq                             #  7     0x18  1      OPC=retq           
                                                                            
.size target, .-target
