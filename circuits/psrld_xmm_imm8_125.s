  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  pmovzxdq %xmm1, %xmm2   #  1     0     5      OPC=pmovzxdq_xmm_xmm  
  pmovzxwd %xmm2, %xmm14  #  2     0x5   6      OPC=pmovzxwd_xmm_xmm  
  andnps %xmm14, %xmm14   #  3     0xb   4      OPC=andnps_xmm_xmm    
  cvtps2pd %xmm14, %xmm1  #  4     0xf   4      OPC=cvtps2pd_xmm_xmm  
  retq                    #  5     0x13  1      OPC=retq              
                                                                      
.size target, .-target
