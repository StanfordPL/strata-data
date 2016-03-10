  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm2                 #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpmovzxwd %xmm8, %ymm3                          #  3     0x9   5      OPC=vpmovzxwd_ymm_xmm        
  vmovd %xmm3, %r8d                               #  4     0xe   5      OPC=vmovd_r32_xmm            
  movl %r8d, %ebx                                 #  5     0x13  3      OPC=movl_r32_r32             
  retq                                            #  6     0x16  1      OPC=retq                     
                                                                                                     
.size target, .-target
