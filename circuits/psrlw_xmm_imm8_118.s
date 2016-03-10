  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  sqrtpd %xmm1, %xmm8         #  1     0     5      OPC=sqrtpd_xmm_xmm      
  vpmovzxwq %xmm1, %ymm4      #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm   
  divss %xmm8, %xmm4          #  3     0xa   5      OPC=divss_xmm_xmm       
  vsubps %ymm4, %ymm4, %ymm8  #  4     0xf   4      OPC=vsubps_ymm_ymm_ymm  
  cvtpd2ps %xmm8, %xmm1       #  5     0x13  5      OPC=cvtpd2ps_xmm_xmm    
  retq                        #  6     0x18  1      OPC=retq                
                                                                            
.size target, .-target
