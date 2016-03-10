  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x80, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  incw %bx                           #  2     0xa   3      OPC=incw_r16        
  xaddb %bl, %ah                     #  3     0xd   3      OPC=xaddb_rh_r8     
  setnp %ah                          #  4     0x10  3      OPC=setnp_rh        
  callq .move_032_016_ebx_r12w_r13w  #  5     0x13  5      OPC=callq_label     
  negb %bl                           #  6     0x18  2      OPC=negb_r8         
  xaddb %ah, %bl                     #  7     0x1a  3      OPC=xaddb_r8_rh     
  negb %r12b                         #  8     0x1d  3      OPC=negb_r8         
  retq                               #  9     0x20  1      OPC=retq            
                                                                               
.size target, .-target
