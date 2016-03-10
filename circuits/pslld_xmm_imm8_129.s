  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovq %xmm1, %xmm2       #  1     0    4      OPC=vmovq_xmm_xmm       
  punpckhqdq %xmm2, %xmm2  #  2     0x4  4      OPC=punpckhqdq_xmm_xmm  
  cvtdq2pd %xmm2, %xmm1    #  3     0x8  4      OPC=cvtdq2pd_xmm_xmm    
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
