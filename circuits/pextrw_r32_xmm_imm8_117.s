  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovsldup %xmm1, %xmm11                         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  divsd %xmm8, %xmm11                             #  3     0x9   5      OPC=divsd_xmm_xmm          
  vpmovzxwq %xmm10, %xmm6                         #  4     0xe   5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %ymm11, %ymm6, %ymm9                  #  5     0x13  5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovq %xmm9, %rbx                               #  6     0x18  5      OPC=vmovq_r64_xmm          
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
