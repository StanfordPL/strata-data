  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  cvtdq2pd %xmm1, %xmm14  #  1     0     5      OPC=cvtdq2pd_xmm_xmm  
  vmovaps %xmm14, %xmm4   #  2     0x5   5      OPC=vmovaps_xmm_xmm   
  movq %xmm4, %xmm1       #  3     0xa   4      OPC=movq_xmm_xmm      
  movhlps %xmm1, %xmm1    #  4     0xe   3      OPC=movhlps_xmm_xmm   
  retq                    #  5     0x11  1      OPC=retq              
                                                                      
.size target, .-target
