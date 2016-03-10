  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  paddq %xmm3, %xmm2            #  1     0     4      OPC=paddq_xmm_xmm         
  vrsqrtss %xmm2, %xmm2, %xmm8  #  2     0x4   4      OPC=vrsqrtss_xmm_xmm_xmm  
  vmovss %xmm2, %xmm8, %xmm15   #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm    
  vmovdqa %xmm15, %xmm1         #  4     0xc   5      OPC=vmovdqa_xmm_xmm       
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
