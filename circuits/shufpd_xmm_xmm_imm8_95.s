  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm15  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmulss %xmm15, %xmm2, %xmm11      #  2     0x4   5      OPC=vmulss_xmm_xmm_xmm       
  vandpd %xmm11, %xmm15, %xmm12     #  3     0x9   5      OPC=vandpd_xmm_xmm_xmm       
  vmovsd %xmm12, %xmm2, %xmm15      #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm       
  unpckhpd %xmm15, %xmm1            #  5     0x13  5      OPC=unpckhpd_xmm_xmm         
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
