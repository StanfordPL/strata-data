  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  pmovzxwd %xmm2, %xmm3                         #  1     0     5      OPC=pmovzxwd_xmm_xmm      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vpbroadcastw %xmm5, %ymm0                     #  3     0xa   5      OPC=vpbroadcastw_ymm_xmm  
  punpckhqdq %xmm2, %xmm0                       #  4     0xf   4      OPC=punpckhqdq_xmm_xmm    
  vpsubd %xmm5, %xmm0, %xmm9                    #  5     0x13  4      OPC=vpsubd_xmm_xmm_xmm    
  vxorpd %xmm9, %xmm7, %xmm1                    #  6     0x17  5      OPC=vxorpd_xmm_xmm_xmm    
  retq                                          #  7     0x1c  1      OPC=retq                  
                                                                                                
.size target, .-target
