  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm3, %xmm9  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vmovupd %xmm9, %xmm15       #  2     0x4  5      OPC=vmovupd_xmm_xmm     
  vmovdqu %xmm15, %xmm1       #  3     0x9  5      OPC=vmovdqu_xmm_xmm     
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
