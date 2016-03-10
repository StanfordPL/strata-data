  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0x5, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  movq %xmm1, %rdx                 #  2     0xa   5      OPC=movq_r64_xmm    
  rolw $0x1, %dx                   #  3     0xf   3      OPC=rolw_r16_one    
  callq .move_032_016_edx_r8w_r9w  #  4     0x12  5      OPC=callq_label     
  xchgw %r9w, %bx                  #  5     0x17  4      OPC=xchgw_r16_r16   
  retq                             #  6     0x1b  1      OPC=retq            
                                                                             
.size target, .-target
