  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vpmovzxwq %xmm1, %xmm3          #  1     0    5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %ymm3, %ymm3, %ymm10  #  2     0x5  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovd %xmm10, %ebx              #  3     0x9  4      OPC=vmovd_r32_xmm          
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
