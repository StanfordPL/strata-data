  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  movzbl %bh, %ecx                   #  1     0    3      OPC=movzbl_r32_rh  
  callq .move_032_016_ecx_r12w_r13w  #  2     0x3  5      OPC=callq_label    
  xaddb %cl, %ah                     #  3     0x8  3      OPC=xaddb_rh_r8    
  testb %r12b, %cl                   #  4     0xb  3      OPC=testb_r8_r8    
  retq                               #  5     0xe  1      OPC=retq           
                                                                             
.size target, .-target
