  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x0, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  salw $0x1, %ax           #  3     0xf   3      OPC=salw_r16_one    
  xaddb %bl, %ah           #  4     0x12  3      OPC=xaddb_rh_r8     
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
