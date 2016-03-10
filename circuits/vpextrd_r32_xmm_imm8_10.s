  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label       
  unpcklpd %xmm13, %xmm1               #  2     0x5   5      OPC=unpcklpd_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9       #  3     0xa   5      OPC=callq_label       
  movq $0x6, %rbx                      #  4     0xf   10     OPC=movq_r64_imm64    
  xchgl %r9d, %ebx                     #  5     0x19  3      OPC=xchgl_r32_r32     
  retq                                 #  6     0x1c  1      OPC=retq              
                                                                                   
.size target, .-target
