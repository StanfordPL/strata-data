  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovss %xmm3, %xmm2, %xmm8    #  1     0     4      OPC=vmovss_xmm_xmm_xmm    
  vcvttps2dq %xmm3, %xmm0       #  2     0x4   4      OPC=vcvttps2dq_xmm_xmm    
  vmovhlps %xmm0, %xmm3, %xmm7  #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovsd %xmm8, %xmm7, %xmm1    #  4     0xc   5      OPC=vmovsd_xmm_xmm_xmm    
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
