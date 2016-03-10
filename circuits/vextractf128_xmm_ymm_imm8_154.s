  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vorps %ymm1, %ymm1, %ymm2    #  1     0    4      OPC=vorps_ymm_ymm_ymm   
  vmovdqa %xmm2, %xmm10        #  2     0x4  4      OPC=vmovdqa_xmm_xmm     
  vmaxsd %xmm2, %xmm10, %xmm1  #  3     0x8  4      OPC=vmaxsd_xmm_xmm_xmm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
