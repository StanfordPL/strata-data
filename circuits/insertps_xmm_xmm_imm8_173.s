  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpxor %xmm9, %xmm9, %xmm9   #  1     0    5      OPC=vpxor_xmm_xmm_xmm   
  vmovss %xmm9, %xmm1, %xmm8  #  2     0x5  5      OPC=vmovss_xmm_xmm_xmm  
  movq %xmm8, %xmm1           #  3     0xa  5      OPC=movq_xmm_xmm        
  retq                        #  4     0xf  1      OPC=retq                
                                                                           
.size target, .-target
