  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  orw %r9w, %r8w                  #  2     0x5   4      OPC=orw_r16_r16         
  vzeroall                        #  3     0x9   3      OPC=vzeroall            
  vdivss %xmm3, %xmm11, %xmm2     #  4     0xc   4      OPC=vdivss_xmm_xmm_xmm  
  vsqrtpd %xmm2, %xmm12           #  5     0x10  4      OPC=vsqrtpd_xmm_xmm     
  callq .move_064_128_r8_r9_xmm3  #  6     0x14  5      OPC=callq_label         
  vcvttps2dq %ymm12, %ymm5        #  7     0x19  5      OPC=vcvttps2dq_ymm_ymm  
  vpor %ymm3, %ymm5, %ymm1        #  8     0x1e  4      OPC=vpor_ymm_ymm_ymm    
  retq                            #  9     0x22  1      OPC=retq                
                                                                                
.size target, .-target
