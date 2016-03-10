  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vminss %xmm1, %xmm1, %xmm10         #  1     0     4      OPC=vminss_xmm_xmm_xmm          
  vpmovzxdq %xmm1, %ymm6              #  2     0x4   5      OPC=vpmovzxdq_ymm_xmm           
  vcvtdq2pd %ymm6, %ymm4              #  3     0x9   4      OPC=vcvtdq2pd_ymm_ymm           
  vfmaddsub132ps %xmm1, %xmm6, %xmm6  #  4     0xd   5      OPC=vfmaddsub132ps_xmm_xmm_xmm  
  vfmsub213pd %ymm6, %ymm10, %ymm6    #  5     0x12  5      OPC=vfmsub213pd_ymm_ymm_ymm     
  vpunpckhqdq %ymm6, %ymm4, %ymm4     #  6     0x17  4      OPC=vpunpckhqdq_ymm_ymm_ymm     
  movddup %xmm4, %xmm1                #  7     0x1b  4      OPC=movddup_xmm_xmm             
  retq                                #  8     0x1f  1      OPC=retq                        
                                                                                            
.size target, .-target
