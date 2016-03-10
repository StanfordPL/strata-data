  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  movq %xmm1, %rax   #  2     0xa   5      OPC=movq_r64_xmm    
  xaddb %bl, %bh     #  3     0xf   3      OPC=xaddb_rh_r8     
  rolb $0x1, %bh     #  4     0x12  2      OPC=rolb_rh_one     
  cmpxchgb %ah, %ah  #  5     0x14  3      OPC=cmpxchgb_rh_rh  
  xchgb %al, %bl     #  6     0x17  2      OPC=xchgb_r8_r8     
  retq               #  7     0x19  1      OPC=retq            
                                                               
.size target, .-target
