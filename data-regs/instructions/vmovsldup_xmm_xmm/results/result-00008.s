  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vbroadcastss %xmm2, %xmm15        #  1     0     5      OPC=vbroadcastss_xmm_xmm     
  vpunpckhqdq %xmm15, %xmm2, %xmm1  #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm1, %xmm6         #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm     
  vmovhlps %xmm1, %xmm6, %xmm1      #  4     0xf   4      OPC=vmovhlps_xmm_xmm_xmm     
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
