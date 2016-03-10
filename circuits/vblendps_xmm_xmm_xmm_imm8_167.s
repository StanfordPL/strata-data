  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm6            #  1     0     4      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm6, %xmm10  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm2, %xmm10, %xmm0   #  3     0x8   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vmaxsd %xmm3, %xmm3, %xmm15      #  4     0xc   4      OPC=vmaxsd_xmm_xmm_xmm      
  vunpcklpd %xmm0, %xmm15, %xmm1   #  5     0x10  4      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
