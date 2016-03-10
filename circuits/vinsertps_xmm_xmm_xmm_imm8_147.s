  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm9, %xmm9, %xmm1  #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  vcvtps2dq %xmm1, %xmm0      #  2     0x5   4      OPC=vcvtps2dq_xmm_xmm   
  vaddsd %xmm0, %xmm2, %xmm6  #  3     0x9   4      OPC=vaddsd_xmm_xmm_xmm  
  punpckhqdq %xmm6, %xmm1     #  4     0xd   4      OPC=punpckhqdq_xmm_xmm  
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
