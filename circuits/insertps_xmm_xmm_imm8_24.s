  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  cvtpd2dq %xmm2, %xmm11           #  1     0     5      OPC=cvtpd2dq_xmm_xmm       
  vunpcklps %xmm2, %xmm1, %xmm0    #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %xmm11, %xmm1, %xmm14  #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm  
  movq %xmm0, %xmm1                #  4     0xe   4      OPC=movq_xmm_xmm           
  movlhps %xmm14, %xmm1            #  5     0x12  4      OPC=movlhps_xmm_xmm        
  retq                             #  6     0x16  1      OPC=retq                   
                                                                                    
.size target, .-target
