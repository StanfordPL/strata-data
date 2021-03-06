  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  movsd %xmm2, %xmm3                              #  1     0     4      OPC=movsd_xmm_xmm            
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  pmovzxbd %xmm11, %xmm1                          #  3     0x9   6      OPC=pmovzxbd_xmm_xmm         
  vsubss %xmm1, %xmm1, %xmm1                      #  4     0xf   4      OPC=vsubss_xmm_xmm_xmm       
  vfmsub213ps %xmm1, %xmm1, %xmm1                 #  5     0x13  5      OPC=vfmsub213ps_xmm_xmm_xmm  
  vunpckhpd %xmm1, %xmm2, %xmm10                  #  6     0x18  4      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label              
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
