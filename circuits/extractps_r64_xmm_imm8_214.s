  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm10  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpckldq %xmm1, %xmm10, %xmm15  #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpmovzxdq %xmm15, %ymm3           #  3     0x8   5      OPC=vpmovzxdq_ymm_xmm        
  vmovd %xmm3, %ebx                 #  4     0xd   4      OPC=vmovd_r32_xmm            
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
