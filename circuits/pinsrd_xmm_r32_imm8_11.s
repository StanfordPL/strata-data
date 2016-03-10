  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movd %ebx, %xmm6                 #  1     0     4      OPC=movd_xmm_r32            
  vmovhlps %xmm1, %xmm1, %xmm12    #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm    
  vmovss %xmm12, %xmm12, %xmm9     #  3     0x8   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm6, %xmm9, %xmm15  #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movlhps %xmm15, %xmm1            #  5     0x11  4      OPC=movlhps_xmm_xmm         
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
