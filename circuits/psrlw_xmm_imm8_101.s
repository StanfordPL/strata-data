  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  cvtdq2pd %xmm1, %xmm14  #  1     0    5      OPC=cvtdq2pd_xmm_xmm  
  movq %xmm14, %xmm1      #  2     0x5  5      OPC=movq_xmm_xmm      
  unpckhps %xmm1, %xmm1   #  3     0xa  3      OPC=unpckhps_xmm_xmm  
  retq                    #  4     0xd  1      OPC=retq              
                                                                     
.size target, .-target
