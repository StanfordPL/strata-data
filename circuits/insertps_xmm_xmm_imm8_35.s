  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %xmm7        #  1     0     5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm1, %xmm7, %xmm10  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vsqrtsd %xmm2, %xmm10, %xmm11    #  3     0x9   4      OPC=vsqrtsd_xmm_xmm_xmm     
  andnpd %xmm1, %xmm1              #  4     0xd   4      OPC=andnpd_xmm_xmm          
  unpckhpd %xmm11, %xmm1           #  5     0x11  5      OPC=unpckhpd_xmm_xmm        
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
