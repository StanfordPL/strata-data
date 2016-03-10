  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movd %ebx, %xmm12                #  1     0     5      OPC=movd_xmm_r32            
  vorpd %xmm1, %xmm1, %xmm0        #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm       
  vpunpckldq %xmm12, %xmm0, %xmm8  #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  rsqrtss %xmm0, %xmm1             #  4     0xe   4      OPC=rsqrtss_xmm_xmm         
  movsd %xmm8, %xmm1               #  5     0x12  5      OPC=movsd_xmm_xmm           
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
