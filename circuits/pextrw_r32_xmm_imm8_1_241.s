  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm8, %xmm1             #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm1, %rbx                  #  3     0xa   5      OPC=vmovq_r64_xmm      
  callq .move_128_064_xmm1_r12_r13   #  4     0xf   5      OPC=callq_label        
  xchgl %r13d, %ebx                  #  5     0x14  3      OPC=xchgl_r32_r32      
  retq                               #  6     0x17  1      OPC=retq               
                                                                                  
.size target, .-target
