  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmulps %xmm2, %xmm2, %xmm13   #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  vmovd %ebx, %xmm11            #  2     0x4   4      OPC=vmovd_xmm_r32       
  vmaxss %xmm13, %xmm2, %xmm10  #  3     0x8   5      OPC=vmaxss_xmm_xmm_xmm  
  punpckldq %xmm11, %xmm2       #  4     0xd   5      OPC=punpckldq_xmm_xmm   
  vmovsd %xmm2, %xmm10, %xmm1   #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                          #  6     0x16  1      OPC=retq                
                                                                              
.size target, .-target
