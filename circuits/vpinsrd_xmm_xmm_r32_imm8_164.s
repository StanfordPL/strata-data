  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmovd %ebx, %xmm1                 #  1     0     4      OPC=vmovd_xmm_r32             
  vfnmsub213ss %xmm1, %xmm1, %xmm2  #  2     0x4   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  vpor %xmm1, %xmm1, %xmm6          #  3     0x9   4      OPC=vpor_xmm_xmm_xmm          
  vmovss %xmm6, %xmm2, %xmm1        #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm        
  retq                              #  5     0x11  1      OPC=retq                      
                                                                                        
.size target, .-target
