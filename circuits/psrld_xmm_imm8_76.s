  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  cvtdq2pd %xmm1, %xmm12  #  1     0    5      OPC=cvtdq2pd_xmm_xmm  
  andnpd %xmm12, %xmm1    #  2     0x5  5      OPC=andnpd_xmm_xmm    
  subpd %xmm1, %xmm1      #  3     0xa  4      OPC=subpd_xmm_xmm     
  retq                    #  4     0xe  1      OPC=retq              
                                                                     
.size target, .-target
