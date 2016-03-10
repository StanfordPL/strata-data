  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovq %rbx, %xmm3              #  1     0    5      OPC=vmovq_xmm_r64         
  vmaxsd %xmm2, %xmm2, %xmm10    #  2     0x5  4      OPC=vmaxsd_xmm_xmm_xmm    
  vmovlhps %xmm3, %xmm10, %xmm1  #  3     0x9  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
