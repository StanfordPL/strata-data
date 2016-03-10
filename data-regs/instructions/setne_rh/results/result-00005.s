  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rcx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  movzwl %r12w, %eax                 #  3     0xf   4      OPC=movzwl_r32_r16  
  setnz %ah                          #  4     0x13  3      OPC=setnz_rh        
  cltq                               #  5     0x16  2      OPC=cltq            
  retq                               #  6     0x18  1      OPC=retq            
                                                                               
.size target, .-target
