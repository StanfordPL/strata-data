  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  movq %xmm1, %xmm14          #  1     0     5      OPC=movq_xmm_xmm          
  vpmovzxdq %xmm14, %ymm10    #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm     
  movapd %xmm14, %xmm1        #  3     0xa   5      OPC=movapd_xmm_xmm        
  vpbroadcastb %xmm10, %xmm2  #  4     0xf   5      OPC=vpbroadcastb_xmm_xmm  
  vcvttpd2dq %ymm2, %xmm12    #  5     0x14  4      OPC=vcvttpd2dq_xmm_ymm    
  unpckhpd %xmm12, %xmm1      #  6     0x18  5      OPC=unpckhpd_xmm_xmm      
  retq                        #  7     0x1d  1      OPC=retq                  
                                                                              
.size target, .-target
