  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label              
  vpbroadcastw %xmm2, %ymm5                     #  2     0x5   5      OPC=vpbroadcastw_ymm_xmm     
  vpunpckhqdq %ymm5, %ymm5, %ymm9               #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovd %r11d, %xmm7                            #  4     0xe   5      OPC=vmovd_xmm_r32            
  vmovss %xmm2, %xmm2, %xmm1                    #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm       
  movsd %xmm9, %xmm1                            #  6     0x17  5      OPC=movsd_xmm_xmm            
  vmovss %xmm7, %xmm1, %xmm1                    #  7     0x1c  4      OPC=vmovss_xmm_xmm_xmm       
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
