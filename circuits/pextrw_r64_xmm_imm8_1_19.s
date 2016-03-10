  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm9          #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vpmovzxwq %xmm9, %xmm3          #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %ymm3, %ymm3, %ymm13  #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movq %xmm13, %rbx               #  4     0xd   5      OPC=movq_r64_xmm           
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
