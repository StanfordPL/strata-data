  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  vsubss %xmm3, %xmm1, %xmm7          #  1     0     4      OPC=vsubss_xmm_xmm_xmm          
  vpmovzxwd %xmm7, %ymm11             #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm           
  vfnmsub213ps %xmm1, %xmm11, %xmm1   #  3     0x9   5      OPC=vfnmsub213ps_xmm_xmm_xmm    
  vfmaddsub213ps %xmm1, %xmm2, %xmm3  #  4     0xe   5      OPC=vfmaddsub213ps_xmm_xmm_xmm  
  vmovapd %xmm3, %xmm1                #  5     0x13  4      OPC=vmovapd_xmm_xmm             
  retq                                #  6     0x17  1      OPC=retq                        
                                                                                            
.size target, .-target
