  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vmovaps %xmm2, %xmm0            #  1     0     4      OPC=vmovaps_xmm_xmm       
  vmovapd %xmm2, %xmm14           #  2     0x4   4      OPC=vmovapd_xmm_xmm       
  vmovhlps %xmm0, %xmm14, %xmm11  #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm1        #  4     0xc   5      OPC=punpcklqdq_xmm_xmm    
  retq                            #  5     0x11  1      OPC=retq                  
                                                                                  
.size target, .-target
