  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastd %xmm1, %xmm1       #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vpmovzxwq %xmm1, %xmm9          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %xmm1, %xmm9, %xmm13  #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm13, %ebx              #  4     0xe   4      OPC=vmovd_r32_xmm          
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
