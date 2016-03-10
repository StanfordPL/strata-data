  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  movq $0x0, %rbx                    #  1     0     10     OPC=movq_r64_imm64     
  callq .move_064_032_rbx_r12d_r13d  #  2     0xa   5      OPC=callq_label        
  cvtss2sil %xmm1, %ebx              #  3     0xf   4      OPC=cvtss2sil_r32_xmm  
  addl %r12d, %ebx                   #  4     0x13  3      OPC=addl_r32_r32       
  retq                               #  5     0x16  1      OPC=retq               
                                                                                  
.size target, .-target
