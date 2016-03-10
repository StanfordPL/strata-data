  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovzxdq %xmm1, %ymm4           #  1     0     5      OPC=vpmovzxdq_ymm_xmm        
  vpunpckhqdq %xmm1, %xmm4, %xmm8  #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovsldup %ymm8, %ymm15          #  3     0x9   5      OPC=vmovsldup_ymm_ymm        
  movq %xmm15, %rax                #  4     0xe   5      OPC=movq_r64_xmm             
  movzwl %ax, %ebx                 #  5     0x13  3      OPC=movzwl_r32_r16           
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
