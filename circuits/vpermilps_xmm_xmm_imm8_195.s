  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vmovd %r13d, %xmm3                            #  2     0x5   5      OPC=vmovd_xmm_r32           
  vpbroadcastd %xmm3, %ymm8                     #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm    
  vbroadcastss %xmm8, %ymm12                    #  4     0xf   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckldq %xmm2, %xmm12, %xmm15              #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %ymm8, %ymm15, %ymm2               #  6     0x18  5      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovsd %xmm15, %xmm2, %xmm1                   #  7     0x1d  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                          #  8     0x22  1      OPC=retq                    
                                                                                                  
.size target, .-target
